import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../routes/app_routes.dart';

class SocialAuthService {
  static final GoogleSignIn _googleSignIn = GoogleSignIn();

  static Future<User?> signInWithGoogle() async {
    try {
      // Sign out first to ensure clean state
      await _googleSignIn.signOut();

      // Start Google Sign-In process
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        throw 'Google sign-in cancelled by user';
      }

      // Get authentication tokens
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // Create Firebase credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'account-exists-with-different-credential':
          throw 'Account already exists with a different sign-in method.';
        case 'invalid-credential':
          throw 'Invalid Google credential.';
        case 'operation-not-allowed':
          throw 'Google sign-in is not enabled.';
        case 'user-disabled':
          throw 'This user account has been disabled.';
        case 'user-not-found':
          throw 'No user found with this Google account.';
        case 'wrong-password':
          throw 'Wrong password.';
        case 'invalid-verification-code':
          throw 'Invalid verification code.';
        case 'invalid-verification-id':
          throw 'Invalid verification ID.';
        default:
          throw 'Google sign-in failed: ${e.message}';
      }
    } catch (e) {
      throw 'Google sign-in failed: ${e.toString()}';
    }
  }

  static Future<User?> signInWithTwitter() async {
    // TODO: Implement actual Twitter sign-in
    throw 'Twitter sign-in not implemented yet';
  }

  static Future<User?> signInWithFacebook() async {
    // TODO: Implement actual Facebook sign-in
    throw 'Facebook sign-in not implemented yet';
  }

  static Future<void> loginWithGoogle(BuildContext context) async {
    _toast(context, 'Google selected');
    Navigator.pushReplacementNamed(context, AppRoutes.home);
  }

  static Future<void> loginWithTwitter(BuildContext context) async {
    _toast(context, 'Twitter selected');
    Navigator.pushReplacementNamed(context, AppRoutes.home);
  }

  static Future<void> loginWithFacebook(BuildContext context) async {
    _toast(context, 'Facebook selected');
    Navigator.pushReplacementNamed(context, AppRoutes.home);
  }

  static void _toast(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}
