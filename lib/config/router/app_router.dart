
import 'package:go_router/go_router.dart';
import 'package:hello_app/presentation/animated/animated_screen.dart';
import 'package:hello_app/presentation/introduction/introduction_screen.dart';
import 'package:hello_app/presentation/progress/progress_screen.dart';
import 'package:hello_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:hello_app/presentation/screens/cards/cards_screen.dart';
import 'package:hello_app/presentation/screens/home/home_screen.dart';
import 'package:hello_app/presentation/snackbar/snackbar_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [ //aqui se pondran todas las rutas que se utilizaran en la aplicacion
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbar',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/introduction',
      name: IntroductionScreen.name,
      builder: (context, state) => const IntroductionScreen(),
    ),
  ]
  );