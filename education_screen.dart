import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('آموزش محلول‌ها')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            'در این بخش روش‌های رقیق‌سازی محلول‌ها و استانداردهای توصیه‌شده بر اساس CDC و WHO توضیح داده می‌شود...',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
