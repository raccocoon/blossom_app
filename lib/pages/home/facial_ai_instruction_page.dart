import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class FacialAiInstructionPage extends StatefulWidget {
  const FacialAiInstructionPage({super.key});

  @override
  State<FacialAiInstructionPage> createState() => _FacialAiInstructionPageState();
}

class _FacialAiInstructionPageState extends State<FacialAiInstructionPage> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF4E4),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Instruction',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
            letterSpacing: -0.48,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Correct way section
            Positioned(
              left: 133,
              top: 50,
              child: Container(
                width: 173,
                height: 257,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const NetworkImage("https://placehold.co/173x257"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 81,
              top: 324,
              child: const SizedBox(
                width: 273,
                height: 25,
                child: Text(
                  'Correct way',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 60,
              top: 354,
              child: const SizedBox(
                width: 320,
                height: 57,
                child: Text(
                  'Make sure the camera capture your face fully with a better lightning and without makeup.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            // Wrong way section
            Positioned(
              left: 126,
              top: 428,
              child: Container(
                width: 184,
                height: 255,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const NetworkImage("https://placehold.co/184x255"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 87,
              top: 688,
              child: const SizedBox(
                width: 273,
                height: 25,
                child: Text(
                  'Wrong way',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 60,
              top: 718,
              child: const SizedBox(
                width: 320,
                height: 57,
                child: Text(
                  'Avoid provide a half face photo as it could give wrong analysis.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            // Continue button
            Positioned(
              left: 153,
              top: 810,
              child: Container(
                width: 129,
                height: 35,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFD8BE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: TextButton(
                  onPressed: _showImageSourceDialog,
                  child: const Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            // Display selected image (if any)
            if (_selectedImage != null)
              Positioned(
                left: 100,
                top: 850,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    image: DecorationImage(
                      image: FileImage(_selectedImage!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _showImageSourceDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Image Source'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Camera'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    try {
      final XFile? image = await picker.pickImage(source: source);
      if (image != null) {
        setState(() {
          _selectedImage = File(image.path);
        });

        // Simulate analysis delay
        await Future.delayed(const Duration(seconds: 2));

        // Randomly decide success/failure for demo (50/50 chance)
        final isSuccess = DateTime.now().millisecond % 2 == 0;

        if (isSuccess) {
          // Navigate to success page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FacialAiResultPage()),
          );
        } else {
          // Navigate to error page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FacialAiErrorPage()),
          );
        }
      }
    } catch (e) {
      debugPrint('Error picking image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to pick image')),
      );
    }
  }
}
