import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Fondos y Bordes
  static const background = Color(0xFFF8FAFC);
  static const titleText = Color(0xFF1D1B20);

  static const smbox =  Color(0xFFE9C46A);
  static const mdbox = Color(0xFF2A9D8F);
  static const lgbox = Color(0xFF3D5A80);
}

class AppSpacing{
  AppSpacing._();

  static const sm = 8.0;
  static const md = 12.0;
  static const lg = 16.0;
  static const xl = 24.0;

}

class AppTextStyles{
  AppTextStyles._();

  static const title = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.w800,
    color: AppColors.titleText,
  );

  static const boxSmall = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const boxLarge = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}

class AppTheme{
  AppTheme._();

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.lgbox,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      headlineMedium: AppTextStyles.title
    ),
  );
}