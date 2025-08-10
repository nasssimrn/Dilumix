import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final c1Controller = TextEditingController();
  final v1Controller = TextEditingController();
  final c2Controller = TextEditingController();

  String result = '';

  void calculate() {
    double? c1 = double.tryParse(c1Controller.text);
    double? v1 = double.tryParse(v1Controller.text);
    double? c2 = double.tryParse(c2Controller.text);

    if (c1 != null && v1 != null && c2 != null && c2 != 0) {
      double v2 = (c1 * v1) / c2;
      double water = v2 - v1;
      setState(() {
        result = 'حجم کل محلول: ${v2.toStringAsFixed(2)} ml
حجم آب مورد نیاز: ${water.toStringAsFixed(2)} ml';
      });
    } else {
      setState(() {
        result = 'ورودی‌ها نامعتبر است';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('محاسبه‌گر غلظت')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: c1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'C1 (غلظت اولیه)'),
            ),
            TextField(
              controller: v1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'V1 (حجم محلول اولیه)'),
            ),
            TextField(
              controller: c2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'C2 (غلظت نهایی)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculate,
              child: const Text('محاسبه'),
            ),
            const SizedBox(height: 20),
            Text(result, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
