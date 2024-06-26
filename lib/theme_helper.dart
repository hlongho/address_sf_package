import 'package:flutter/material.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [newTheme].
  void changeTheme(String newTheme) {
    _appTheme = newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onSecondaryContainer,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.onSecondaryContainer,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.red900,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primary.withOpacity(0.39),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onSecondaryContainer,
          fontSize: 12,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 12,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray20001,
          fontSize: 10,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 16,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0X19000000),
    primaryContainer: Color(0XFF070F13),
    secondary: Color(0XFF070F13),
    secondaryContainer: Color(0X33F81111),
    tertiary: Color(0XFF070F13),
    tertiaryContainer: Color(0X33F81111),

    // Background colors
    background: Color(0XFF070F13),

    // Surface colors
    surface: Color(0XFF070F13),
    surfaceTint: Color(0XFFEC0015),
    surfaceVariant: Color(0X33F81111),

    // Error colors
    error: Color(0XFFEC0015),
    errorContainer: Color(0XFFA9B0B3),
    onError: Color(0XFFFFFFFF),
    onErrorContainer: Color(0XFFEC0015),

    // On colors(text colors)
    onBackground: Color(0X33F84141),
    onInverseSurface: Color(0XFFFFFFFF),
    onPrimary: Color(0XFFEC0015),
    onPrimaryContainer: Color(0X33F84141),
    onSecondary: Color(0X33F84141),
    onSecondaryContainer: Color(0XFFFFFFFF),
    onTertiary: Color(0X33F84141),
    onTertiaryContainer: Color(0XFFFFFFFF),

    // Other colors
    outline: Color(0XFFEC0015),
    outlineVariant: Color(0XFF070F13),
    scrim: Color(0XFF070F13),
    shadow: Color(0XFFEC0015),

    // Inverse colors
    inversePrimary: Color(0XFF070F13),
    inverseSurface: Color(0XFFEC0015),

    // Pending colors
    onSurface: Color(0X33F84141),
    onSurfaceVariant: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amberA400 => const Color(0XFFFFC000);

  // BlueGray
  Color get blueGray400 => const Color(0XFF888888);
  Color get blueGray700 => const Color(0XFF4C4D57);

  // DeepOrange
  Color get deepOrangeA200 => const Color(0XFFDA7537);
  Color get deepOrangeA700 => const Color(0XFFEB1616);
  Color get deepOrangeA70001 => const Color(0XFFF31700);
  Color get deepOrangeA70033 => const Color(0X33F91212);

  // Gray
  Color get gray100 => const Color(0XFFF4F5F9);
  Color get gray10001 => const Color(0XFFF7F7F7);
  Color get gray10002 => const Color(0XFFF2F3F4);
  Color get gray200 => const Color(0XFFE6E7E8);
  Color get gray20001 => const Color(0XFFE5E7EA);
  Color get gray20002 => const Color(0XFFF0F0F0);
  Color get gray400 => const Color(0XFFC0C0C0);
  Color get gray50 => const Color(0XFFF9F9F9);
  Color get gray5001 => const Color(0XFFF8F8FB);
  Color get gray5002 => const Color(0XFFF7F8FA);
  Color get gray700 => const Color(0XFF606163);
  Color get grayEBEBEB => const Color(0XFFEBEBEB);

  // Green
  Color get green500 => const Color(0XFF56AE59);

  // Indigo
  Color get indigo100 => const Color(0XFFC7CEDE);

  // LightGreen
  Color get lightGreen600 => const Color(0XFF6FC32D);

  // Red
  Color get red70033 => const Color(0X33E02424);
  Color get red900 => const Color(0XFF98272B);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
