import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardsScreen extends StatelessWidget {
  static const String name = "card-screen"; //este es para hacer routing, para pasar de una pestaña a otra

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tarjetas')),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Regresar'),
        icon: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => context.pop(),
      ),
      body: Placeholder(),
    );
  }
}

