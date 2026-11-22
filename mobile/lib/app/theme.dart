import 'package:material_ui/material_ui.dart';

ThemeData buildTheme(Brightness b) => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: const Color(0xFF1B6B5A),
      brightness: b,
      inputDecorationTheme:
          const InputDecorationTheme(border: OutlineInputBorder()),
      cardTheme: const CardThemeData(margin: EdgeInsets.symmetric(vertical: 4)),
    );
