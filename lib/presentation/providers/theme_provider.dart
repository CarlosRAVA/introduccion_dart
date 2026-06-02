import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:hello_app/config/theme/app_theme.dart';


// listado inmutable de colores
final colorListProvider = Provider( (ref) => colorList);

// un boolean para controlar el tema 
final isDarkModeProvider = StateProvider((ref) => false);

//inteeger para controlar el color seleccionado
final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);

// controller ó notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme()
  ThemeNotifier(): super( AppTheme() );

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);

  }

  void changeColorIndex( int colorIndex ) {
    state = state.copyWith(selectColor: colorIndex);
  }
} 