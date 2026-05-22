import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    url: '/buttons',
    icon: Icons.smart_button_rounded,
  ),

  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    url: '/cards',
    icon: Icons.credit_card,
  ),

  MenuItems(
    title: 'Progress Indicator',
    subtitle: 'Generales y Controlados',
    url: '/progress',
    icon: Icons.refresh_rounded,
  ),

  MenuItems(
    title: 'Snackbars y Dialogos',
    subtitle: 'Indicadores en Pantalla',
    url: '/snackbars',
    icon: Icons.info_outline_rounded,
  ),

  MenuItems(
    title: 'Animated Container',
    subtitle: 'Stateful Widgets',
    url: '/animated-container',
    icon: Icons.animation,
  ),

  MenuItems(
    title: 'Introducción a la Aplicación',
    subtitle: 'Tutorial Introductorio',
    url: '/tutorial',
    icon: Icons.accessible_rounded,
  ),

  MenuItems(
    title: 'Cambiar Tema',
    subtitle: 'Cambiar Tema de la Aplicación',
    url: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),

  MenuItems(
    title: 'River Counter',
    subtitle: 'Introducción a Riverpod',
    url: '/counter-river',
    icon: Icons.add,
  ),
];