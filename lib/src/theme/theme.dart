import 'package:flutter/material.dart';

class MaterialTheme {
  const MaterialTheme(this.textTheme);
  final TextTheme textTheme;

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4d662b),
      surfaceTint: Color(0xff4d662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffceeda2),
      onPrimaryContainer: Color(0xff112000),
      secondary: Color(0xff48672e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc9eea7),
      onSecondaryContainer: Color(0xff0c2000),
      tertiary: Color(0xff2e628c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffcde5ff),
      onTertiaryContainer: Color(0xff001d32),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff1a1c16),
      onSurfaceVariant: Color(0xff44483d),
      outline: Color(0xff75796c),
      outlineVariant: Color(0xffc5c8b9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inversePrimary: Color(0xffb2d189),
      primaryFixed: Color(0xffceeda2),
      onPrimaryFixed: Color(0xff112000),
      primaryFixedDim: Color(0xffb2d189),
      onPrimaryFixedVariant: Color(0xff364e15),
      secondaryFixed: Color(0xffc9eea7),
      onSecondaryFixed: Color(0xff0c2000),
      secondaryFixedDim: Color(0xffaed18d),
      onSecondaryFixedVariant: Color(0xff314e19),
      tertiaryFixed: Color(0xffcde5ff),
      onTertiaryFixed: Color(0xff001d32),
      tertiaryFixedDim: Color(0xff9acbfa),
      onTertiaryFixedVariant: Color(0xff0b4a72),
      surfaceDim: Color(0xffdadbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f4e9),
      surfaceContainer: Color(0xffeeefe3),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff324a11),
      surfaceTint: Color(0xff4d662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff627d3f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2d4a15),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5e7e42),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff02466e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4679a3),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff1a1c16),
      onSurfaceVariant: Color(0xff404439),
      outline: Color(0xff5d6155),
      outlineVariant: Color(0xff797c6f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inversePrimary: Color(0xffb2d189),
      primaryFixed: Color(0xff627d3f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4a6428),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5e7e42),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff46642c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4679a3),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2b6089),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdadbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f4e9),
      surfaceContainer: Color(0xffeeefe3),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff152700),
      surfaceTint: Color(0xff4d662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff324a11),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff102800),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2d4a15),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00243c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff02466e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff22251c),
      outline: Color(0xff404439),
      outlineVariant: Color(0xff404439),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inversePrimary: Color(0xffd7f7ab),
      primaryFixed: Color(0xff324a11),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff1d3200),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2d4a15),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff183301),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff02466e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff002f4c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdadbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f4e9),
      surfaceContainer: Color(0xffeeefe3),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb2d189),
      surfaceTint: Color(0xffb2d189),
      onPrimary: Color(0xff203600),
      primaryContainer: Color(0xff364e15),
      onPrimaryContainer: Color(0xffceeda2),
      secondary: Color(0xffaed18d),
      onSecondary: Color(0xff1c3704),
      secondaryContainer: Color(0xff314e19),
      onSecondaryContainer: Color(0xffc9eea7),
      tertiary: Color(0xff9acbfa),
      onTertiary: Color(0xff003352),
      tertiaryContainer: Color(0xff0b4a72),
      onTertiaryContainer: Color(0xffcde5ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff12140e),
      onSurface: Color(0xffe2e3d8),
      onSurfaceVariant: Color(0xffc5c8b9),
      outline: Color(0xff8f9285),
      outlineVariant: Color(0xff44483d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inversePrimary: Color(0xff4d662b),
      primaryFixed: Color(0xffceeda2),
      onPrimaryFixed: Color(0xff112000),
      primaryFixedDim: Color(0xffb2d189),
      onPrimaryFixedVariant: Color(0xff364e15),
      secondaryFixed: Color(0xffc9eea7),
      onSecondaryFixed: Color(0xff0c2000),
      secondaryFixedDim: Color(0xffaed18d),
      onSecondaryFixedVariant: Color(0xff314e19),
      tertiaryFixed: Color(0xffcde5ff),
      onTertiaryFixed: Color(0xff001d32),
      tertiaryFixedDim: Color(0xff9acbfa),
      onTertiaryFixedVariant: Color(0xff0b4a72),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff383a32),
      surfaceContainerLowest: Color(0xff0d0f09),
      surfaceContainerLow: Color(0xff1a1c16),
      surfaceContainer: Color(0xff1e201a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb7d58d),
      surfaceTint: Color(0xffb2d189),
      onPrimary: Color(0xff0d1a00),
      primaryContainer: Color(0xff7e9a58),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb2d691),
      onSecondary: Color(0xff091a00),
      secondaryContainer: Color(0xff799b5c),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xff9ed0ff),
      onTertiary: Color(0xff00182a),
      tertiaryContainer: Color(0xff6495c1),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff12140e),
      onSurface: Color(0xfffbfcf0),
      onSurfaceVariant: Color(0xffc9ccbe),
      outline: Color(0xffa1a497),
      outlineVariant: Color(0xff818578),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inversePrimary: Color(0xff374f16),
      primaryFixed: Color(0xffceeda2),
      onPrimaryFixed: Color(0xff091400),
      primaryFixedDim: Color(0xffb2d189),
      onPrimaryFixedVariant: Color(0xff263c04),
      secondaryFixed: Color(0xffc9eea7),
      onSecondaryFixed: Color(0xff061500),
      secondaryFixedDim: Color(0xffaed18d),
      onSecondaryFixedVariant: Color(0xff213d09),
      tertiaryFixed: Color(0xffcde5ff),
      onTertiaryFixed: Color(0xff001222),
      tertiaryFixedDim: Color(0xff9acbfa),
      onTertiaryFixedVariant: Color(0xff00395b),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff383a32),
      surfaceContainerLowest: Color(0xff0d0f09),
      surfaceContainerLow: Color(0xff1a1c16),
      surfaceContainer: Color(0xff1e201a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff4ffdf),
      surfaceTint: Color(0xffb2d189),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb7d58d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff3ffe2),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb2d691),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff9faff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff9ed0ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff12140e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff9fced),
      outline: Color(0xffc9ccbe),
      outlineVariant: Color(0xffc9ccbe),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inversePrimary: Color(0xff1b2f00),
      primaryFixed: Color(0xffd2f1a6),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb7d58d),
      onPrimaryFixedVariant: Color(0xff0d1a00),
      secondaryFixed: Color(0xffcdf2ab),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb2d691),
      onSecondaryFixedVariant: Color(0xff091a00),
      tertiaryFixed: Color(0xffd5e9ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff9ed0ff),
      onTertiaryFixedVariant: Color(0xff00182a),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff383a32),
      surfaceContainerLowest: Color(0xff0d0f09),
      surfaceContainerLow: Color(0xff1a1c16),
      surfaceContainer: Color(0xff1e201a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        cardTheme: const CardTheme(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<BeveledRectangleBorder>(
              const BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
            ),
          ),
        ),
        // inputDecorationTheme: InputDecorationTheme(
        //   hintStyle: Theme.of(context).textTheme.bodyMedium!,
        // ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<BeveledRectangleBorder>(
              const BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
            ),
          ),
        ),
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
