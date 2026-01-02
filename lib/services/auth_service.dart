import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final _auth = FirebaseAuth.instance;
  static String? _verificationId;

  static Future<User?> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Send email verification
      if (result.user != null && !result.user!.emailVerified) {
        await result.user!.sendEmailVerification();
      }

      return result.user;
    } on FirebaseAuthException catch (e) {
      throw e.message ?? 'Sign up failed';
    }
  }

  static Future<User?> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return result.user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw 'No user found with this email.';
        case 'wrong-password':
          throw 'Wrong password provided.';
        case 'invalid-email':
          throw 'Invalid email address.';
        case 'user-disabled':
          throw 'This user account has been disabled.';
        case 'too-many-requests':
          throw 'Too many failed login attempts. Try again later.';
        case 'network-request-failed':
          throw 'Network error. Check your connection.';
        default:
          throw e.message ?? 'Sign in failed';
      }
    } catch (e) {
      throw 'Sign in failed: ${e.toString()}';
    }
  }

  static Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw 'No user found with this email address.';
        case 'invalid-email':
          throw 'Invalid email address.';
        case 'too-many-requests':
          throw 'Too many requests. Try again later.';
        default:
          throw e.message ?? 'Failed to send password reset email';
      }
    } catch (e) {
      throw 'Failed to send password reset email: ${e.toString()}';
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static User? get currentUser => _auth.currentUser;

  static Stream<User?> get authStateChanges => _auth.authStateChanges();

  // Phone Authentication Methods
  static Future<void> sendOTP({
    required String phoneNumber,
    required Function(String verificationId) onCodeSent,
    required Function(FirebaseAuthException e) onVerificationFailed,
  }) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // Auto verification completed
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: onVerificationFailed,
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
        onCodeSent(verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        _verificationId = verificationId;
      },
      timeout: const Duration(seconds: 60),
    );
  }

  static Future<User?> verifyOTP(String otp) async {
    if (_verificationId == null) {
      throw Exception('Verification ID not found. Please request OTP again.');
    }

    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: otp,
      );

      final result = await _auth.signInWithCredential(credential);
      return result.user;
    } on FirebaseAuthException catch (e) {
      throw e.message ?? 'OTP verification failed';
    }
  }
}
