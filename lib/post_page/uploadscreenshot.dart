import 'package:flutter/material.dart';

class UploadScreenshot extends StatefulWidget {
  const UploadScreenshot({super.key});

  @override
  State<UploadScreenshot> createState() => _UploadScreenshotState();
}

class _UploadScreenshotState extends State<UploadScreenshot> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('upload screenshots'),
      ),
    );
  }
}
