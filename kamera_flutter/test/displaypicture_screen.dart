// TODO Implement this library.
import 'dart:io';
import 'package:flutter/material.dart';

// Halaman untuk menampilkan hasil foto
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture - NIM Anda')),
      body: Image.file(File(imagePath)),
    );
  }
}
