import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.grey,
  Colors.lightGreen,
  Colors.teal,
  Colors.red,
];

class AppTheme {
  final int selectColor;
  final bool isDarkMode;

  AppTheme({this.selectColor = 0, this.isDarkMode = false})
    : assert(
        selectColor >= 0,
        'Selected Color must be greater than or equal to 0',
      ),
      assert(
        selectColor < colorList.length,
        'Selected color must be less or equal to ${colorList.length}',
      );

  ThemeData getTheme() => ThemeData(
    // useMaterial3: true, en aplicaciones mas antiguas si se llega a ver el useMaterial3
    colorSchemeSeed: colorList[selectColor],
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    appBarTheme: AppBarTheme(centerTitle: true),
  );

  AppTheme copyWith({
    int? selectColor,
    bool? isDarkMode
  }) => AppTheme(
    selectColor: selectColor ?? this.selectColor,
    isDarkMode: isDarkMode ?? this.isDarkMode
  );
}
