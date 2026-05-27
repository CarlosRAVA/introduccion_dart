import 'package:flutter/material.dart';

class RiverpodScreen extends StatelessWidget {
  static const name = "progress-indicator";
  const RiverpodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicator'),
      ),
      body: Placeholder() //separado en un stateless widget que esta debajo
    );
  }
}