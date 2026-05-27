import 'package:flutter/material.dart';
import 'package:hello_app/config/theme/app_theme.dart';

class ThemeChangerScreen extends StatelessWidget {
  static final String name = "themeChanger_screen";
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.dark_mode_outlined)
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          final color = colorList[index];

          return RadioListTile(
            title: Text('Color', style: TextStyle(color: color)),
            subtitle: Text('Valor'),
            activeColor: color,
            value: index,
            onChanged: (value) {

              // Cambiar el tema aquí
            },
          );
        },
      ),
    );
  }
}