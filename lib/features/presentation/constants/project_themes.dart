import 'package:flutter/material.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';

class ProjectThemes {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ProjectColors.netguruGreen,
    accentColor: ProjectColors.netguruGreen,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ProjectColors.white,
    ),
    appBarTheme: const AppBarTheme(
      brightness: Brightness.dark,
      iconTheme: IconThemeData(
        color: ProjectColors.white,
      ),
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: ProjectColors.white,
          fontSize: 18
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: ProjectColors.white,
    ),
  );

  static ThemeData darkTheme = lightTheme.copyWith(
    primaryColor: ProjectColors.riddlesdown,
    scaffoldBackgroundColor: ProjectColors.black,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: ProjectColors.white),
      bodyText2: TextStyle(color: ProjectColors.white),
    ),
    inputDecorationTheme: const InputDecorationTheme(hintStyle: TextStyle(color: ProjectColors.riddlesdown)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ProjectColors.riddlesdown,
      hoverColor: ProjectColors.engineerBlack,
    ),
  );
}
