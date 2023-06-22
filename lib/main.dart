import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 171, 119, 219),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        textTheme: ThemeData().textTheme.copyWith(
        bodyText1: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: kDarkColorScheme.primary,
              ),
         headline2: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kDarkColorScheme.primary,
              ),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primary,
        ),
        
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
          
        ),
        textTheme: ThemeData().textTheme.copyWith(
              headline1: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kColorScheme.primary,
              ),
              headline2: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kColorScheme.primary,
              ),
              headline3: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: kColorScheme.primary,
              ),
              headline4: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: kColorScheme.primary,
              ),
              headline5:  TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: kColorScheme.primary,
              ),
              headline6:  TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: kColorScheme.primary,
              ),
              bodyText1: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: kColorScheme.primary,
              ),
              bodyText2:  TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: kColorScheme.primary,
              ),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
