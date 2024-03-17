import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/core/theme/consts.dart';
import 'package:chibi/core/theme/fonts.dart';
import 'package:flutter/material.dart';

ThemeData getLightTheme() {
  return _theme(_getColorScheme(Brightness.light));
}

ThemeData _theme(ColorScheme colorScheme) {
  final btnSize = MaterialStateProperty.all(
      Size(Consts.primaryBtnWidthS, Consts.btnHeightL));

  final btnRadius = MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Consts.radius)));

  final themeData = ThemeData(
    fontFamily: Font.fontFamily,
    primaryColor: colorScheme.primary,
    secondaryHeaderColor: colorScheme.secondary,
    disabledColor: Colours.midgray,
    scaffoldBackgroundColor: colorScheme.tertiary,
    colorScheme: colorScheme,
    brightness: colorScheme.brightness,

    textTheme: TextTheme(
      headlineLarge: TextStyle(
          fontSize: FontSize.xLarge,
          fontWeight: FontWeights.medium,
          color: colorScheme.secondary),
      headlineMedium: TextStyle(
          fontSize: FontSize.large,
          fontWeight: FontWeights.bold,
          color: colorScheme.secondary),
      headlineSmall: TextStyle(
          fontSize: FontSize.medium,
          fontWeight: FontWeights.bold,
          color: colorScheme.secondary),
      titleLarge: const TextStyle(
          fontSize: FontSize.large, fontWeight: FontWeights.light),
      titleMedium: TextStyle(
          fontSize: FontSize.large,
          fontWeight: FontWeights.medium,
          color: colorScheme.secondary),
      titleSmall: TextStyle(
          color: colorScheme.tertiary,
          fontSize: FontSize.tiny,
          fontWeight: FontWeights.medium),
      bodyLarge: const TextStyle(
          fontSize: FontSize.large, fontWeight: FontWeights.medium),
      bodyMedium: const TextStyle(
          fontSize: FontSize.medium, fontWeight: FontWeights.medium),
      labelLarge: TextStyle(
          fontSize: FontSize.large,
          fontWeight: FontWeights.medium,
          color: colorScheme.tertiary),
      labelMedium: const TextStyle(
        fontSize: FontSize.small,
        fontWeight: FontWeights.light,
        color: Colours.lightgray,
      ),
      labelSmall: const TextStyle(
          fontSize: FontSize.tiny, fontWeight: FontWeights.light),
    ),
    iconTheme: IconThemeData(color: colorScheme.onBackground),

    checkboxTheme: CheckboxThemeData(
        side: const BorderSide(color: Colours.secondary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        checkColor: MaterialStateProperty.all<Color>(
            createMaterialColor(Colours.secondary))),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: colorScheme.tertiary,
      surfaceTintColor: colorScheme.tertiary,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Colours.midgray,
      ),
      shadowColor: colorScheme.tertiary,
      titleTextStyle: TextStyle(
          fontSize: FontSize.large,
          fontWeight: FontWeights.bold,
          color: colorScheme.secondary),
      shape: Border(
          bottom: BorderSide(
        color: Colours.lightgray.withOpacity(0.5),
        width: Consts.borderThick,
      )),
    ),

    // BottomNavigationBar Theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: Consts.bottomNavBarElevation,
      selectedLabelStyle:
          TextStyle(fontSize: FontSize.tiny, fontWeight: FontWeights.bold),
      unselectedLabelStyle:
          TextStyle(fontSize: FontSize.tiny, fontWeight: FontWeights.medium),
    ),

    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(createMaterialColor(colorScheme.primary)),
        minimumSize: btnSize,
        maximumSize: btnSize,
        shape: btnRadius,
        foregroundColor: MaterialStateProperty.all(
            createMaterialColor(colorScheme.tertiary)),
        overlayColor: MaterialStateProperty.all(
            createMaterialColor(colorScheme.tertiary).withOpacity(0.1)),
        textStyle: Consts.btnTextStyle,
      ),
    ),

    // OutlinedButton Theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
              color: createMaterialColor(colorScheme.primary),
              width: Consts.borderThin,
              style: BorderStyle.solid)),
          backgroundColor: MaterialStateProperty.all(
              createMaterialColor(colorScheme.tertiary)),
          minimumSize: btnSize,
          maximumSize: btnSize,
          shape: btnRadius,
          foregroundColor: MaterialStateProperty.all(
              createMaterialColor(colorScheme.primary)),
          overlayColor: MaterialStateProperty.all(
              createMaterialColor(colorScheme.primary).withOpacity(0.1)),
          textStyle: Consts.btnTextStyle),
    ),

    // Divider Theme
    dividerTheme: const DividerThemeData(
      color: Colours.lightgray,
      thickness: Consts.borderThin,
      indent: 0,
      endIndent: 0,
    ),

    // Scrollbar Theme
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(
          Colours.lightgray), // Customize the thumb color
      trackColor:
          MaterialStateProperty.all(Colours.gray), // Customize the track color
      radius: const Radius.circular(Consts.radius),
    ),

    cardTheme: const CardTheme(
        color: Colours.white,
        surfaceTintColor: Colours.white,
        shadowColor: Colours.gray,
        elevation: Consts.elevation),

    // ignore: prefer_const_constructors
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(Consts.globalContentPaddingS),
      fillColor: Colors.transparent,
      hintStyle: const TextStyle(
          fontWeight: FontWeights.medium,
          fontSize: FontSize.medium,
          color: Colours.lightgray),
      labelStyle: const TextStyle(
          fontWeight: FontWeights.medium,
          fontSize: FontSize.large,
          color: Colours.primary),
      enabledBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Colours.lightgray, width: Consts.borderThin),
          borderRadius: BorderRadius.all(Radius.circular(Consts.radius))),
      focusedBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Colours.primary, width: Consts.borderThin),
          borderRadius: BorderRadius.all(Radius.circular(Consts.radius))),
      focusedErrorBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Colours.primary, width: Consts.borderThin),
          borderRadius: BorderRadius.all(Radius.circular(Consts.radius))),
    ),
  );
  return themeData;
}

ColorScheme _getColorScheme(Brightness brightness) {
  const lightColorScheme = ColorScheme.light(
      primary: Colours.primary,
      secondary: Colours.secondary,
      tertiary: Colours.white,
      surface: Colours.white,
      outline: Colours.lightgray);
  return lightColorScheme;
}
