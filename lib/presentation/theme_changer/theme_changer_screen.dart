import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hello_app/config/theme/app_theme.dart';
import 'package:hello_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static final String name = "themeChanger_screen";
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final selectedColor = ref.watch(themeNotifierProvider).selectColor;
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read( themeNotifierProvider.notifier ).toggleDarkMode();
            },
            icon: Icon(
              isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined)
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          final color = colorList[index];

          return RadioListTile(
            title: Text('Color', style: TextStyle(color: color)),
            subtitle: Text(' ${color.toARGB32()}'),
            activeColor: color,
            value: index,
            groupValue: selectedColor,
            onChanged: (value) {
              ref.read( themeNotifierProvider.notifier)
              .changeColorIndex(index);
            },
          );
        },
      ),
    );
  }
}