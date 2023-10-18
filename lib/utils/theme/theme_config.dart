import 'package:flutter/material.dart';

class ThemeConfig {
  static const Color scaffoldBackgroundLight = Color(0xFFF4F4F4);
  static const Color scaffoldBackgroundDark = Color(0xFF222222);
  static const Color splashColor = Color(0xFF808080);
  static const Color seedColor = Color(0xFF808080);
  static const Color dividerColor = Color(0x338B8688);
  static const Color iconColor = Color(0x80807A7A);

  static const Color appBarIconColorLight = Color(0xFF14131C);
  static const Color appBarIconColorDark = Color(0xFFF1F1F1);

  static const Color cardColorLight = Colors.white;
  static const Color cardColorDark = Colors.black;

  static const Color textColorLight = Colors.black;
  static const Color textColorDark = Colors.white;
  static const Color labelColorLight = Color(0x99000000);
  static const Color labelColorDark = Color(0x99ADADAD);

  static final lightTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: scaffoldBackgroundLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: scaffoldBackgroundLight,
        elevation: 0,
        iconTheme: IconThemeData(
          color: appBarIconColorLight,
          size: 22.0,
        ),
      ),
      splashColor: splashColor,
      dividerTheme: const DividerThemeData(
        color: dividerColor,
        thickness: 1.0,
      ),
      iconTheme: const IconThemeData(
        color: iconColor,
        size: 20,
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
      cardTheme: const CardTheme(
        color: cardColorLight,
        clipBehavior: Clip.hardEdge,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w700,
          fontFamily: 'Poppins',
          color: textColorLight,
        ),
        headlineMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: 'Poppins',
          color: textColorLight,
        ),
        headlineSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: 'Poppins',
          color: textColorLight,
        ),
        displayLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins',
          color: textColorLight,
        ),
        displayMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins',
          color: textColorLight,
        ),
        displaySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins',
          color: textColorLight,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
          color: textColorLight,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
          color: textColorLight,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
          color: textColorLight,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: scaffoldBackgroundLight,
        contentPadding: const EdgeInsets.all(20.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: splashColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: splashColor)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: dividerColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: dividerColor),
        ),
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
          color: textColorLight,
        ),
      ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: scaffoldBackgroundDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: scaffoldBackgroundDark,
      elevation: 0,
      iconTheme: IconThemeData(
        color: appBarIconColorDark,
        size: 22.0,
      ),
    ),
    splashColor: splashColor,
    dividerTheme: const DividerThemeData(
      color: dividerColor,
      thickness: 1.0,
    ),
    iconTheme: const IconThemeData(
      color: iconColor,
      size: 20,
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
    cardTheme: const CardTheme(
      color: cardColorDark,
      clipBehavior: Clip.hardEdge,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins',
        color: textColorDark,
      ),
      headlineMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins',
        color: textColorDark,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins',
        color: textColorDark,
      ),
      displayLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: textColorDark,
      ),
      displayMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: textColorDark,
      ),
      displaySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: textColorDark,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        color: textColorDark,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        color: textColorDark,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        color: textColorDark,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: scaffoldBackgroundDark,
      contentPadding: const EdgeInsets.all(20.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: splashColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: splashColor)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: dividerColor),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: dividerColor),
      ),
      hintStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        color: textColorDark,
      ),
    ),
  );
}
