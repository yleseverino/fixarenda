import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283262507),
      surfaceTint: Color(4283262507),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4291751330),
      onPrimaryContainer: Color(4279312384),
      secondary: Color(4282935086),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291423911),
      onSecondaryContainer: Color(4278984704),
      tertiary: Color(4281229964),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4291683839),
      onTertiaryContainer: Color(4278197554),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294572783),
      onSurface: Color(4279901206),
      onSurfaceVariant: Color(4282665021),
      outline: Color(4285888876),
      outlineVariant: Color(4291152057),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282858),
      inversePrimary: Color(4289909129),
      primaryFixed: Color(4291751330),
      onPrimaryFixed: Color(4279312384),
      primaryFixedDim: Color(4289909129),
      onPrimaryFixedVariant: Color(4281749013),
      secondaryFixed: Color(4291423911),
      onSecondaryFixed: Color(4278984704),
      secondaryFixedDim: Color(4289646989),
      onSecondaryFixedVariant: Color(4281421337),
      tertiaryFixed: Color(4291683839),
      onTertiaryFixed: Color(4278197554),
      tertiaryFixedDim: Color(4288334842),
      onTertiaryFixedVariant: Color(4278930034),
      surfaceDim: Color(4292533200),
      surfaceBright: Color(4294572783),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243561),
      surfaceContainer: Color(4293849059),
      surfaceContainerHigh: Color(4293454302),
      surfaceContainerHighest: Color(4293059544),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281485841),
      surfaceTint: Color(4283262507),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284644671),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281158165),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284382786),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278339182),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282808739),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572783),
      onSurface: Color(4279901206),
      onSurfaceVariant: Color(4282401849),
      outline: Color(4284309845),
      outlineVariant: Color(4286151791),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282858),
      inversePrimary: Color(4289909129),
      primaryFixed: Color(4284644671),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283065384),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284382786),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282803244),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282808739),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281032841),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292533200),
      surfaceBright: Color(4294572783),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243561),
      surfaceContainer: Color(4293849059),
      surfaceContainerHigh: Color(4293454302),
      surfaceContainerHighest: Color(4293059544),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4279576320),
      surfaceTint: Color(4283262507),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281485841),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279248896),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281158165),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278199356),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278339182),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572783),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280427804),
      outline: Color(4282401849),
      outlineVariant: Color(4282401849),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282858),
      inversePrimary: Color(4292343723),
      primaryFixed: Color(4281485841),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280103424),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281158165),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279776001),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278339182),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278202188),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292533200),
      surfaceBright: Color(4294572783),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243561),
      surfaceContainer: Color(4293849059),
      surfaceContainerHigh: Color(4293454302),
      surfaceContainerHighest: Color(4293059544),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289909129),
      surfaceTint: Color(4289909129),
      onPrimary: Color(4280301056),
      primaryContainer: Color(4281749013),
      onPrimaryContainer: Color(4291751330),
      secondary: Color(4289646989),
      onSecondary: Color(4280039172),
      secondaryContainer: Color(4281421337),
      onSecondaryContainer: Color(4291423911),
      tertiary: Color(4288334842),
      onTertiary: Color(4278203218),
      tertiaryContainer: Color(4278930034),
      onTertiaryContainer: Color(4291683839),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279374862),
      onSurface: Color(4293059544),
      onSurfaceVariant: Color(4291152057),
      outline: Color(4287599237),
      outlineVariant: Color(4282665021),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059544),
      inversePrimary: Color(4283262507),
      primaryFixed: Color(4291751330),
      onPrimaryFixed: Color(4279312384),
      primaryFixedDim: Color(4289909129),
      onPrimaryFixedVariant: Color(4281749013),
      secondaryFixed: Color(4291423911),
      onSecondaryFixed: Color(4278984704),
      secondaryFixedDim: Color(4289646989),
      onSecondaryFixedVariant: Color(4281421337),
      tertiaryFixed: Color(4291683839),
      onTertiaryFixed: Color(4278197554),
      tertiaryFixedDim: Color(4288334842),
      onTertiaryFixedVariant: Color(4278930034),
      surfaceDim: Color(4279374862),
      surfaceBright: Color(4281874994),
      surfaceContainerLowest: Color(4279045897),
      surfaceContainerLow: Color(4279901206),
      surfaceContainer: Color(4280164378),
      surfaceContainerHigh: Color(4280822564),
      surfaceContainerHighest: Color(4281546286),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290237837),
      surfaceTint: Color(4289909129),
      onPrimary: Color(4279048704),
      primaryContainer: Color(4286487128),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4289910417),
      onSecondary: Color(4278786560),
      secondaryContainer: Color(4286159708),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4288598271),
      onTertiary: Color(4278196266),
      tertiaryContainer: Color(4284782017),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374862),
      onSurface: Color(4294704368),
      onSurfaceVariant: Color(4291415230),
      outline: Color(4288783511),
      outlineVariant: Color(4286678392),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059544),
      inversePrimary: Color(4281814806),
      primaryFixed: Color(4291751330),
      onPrimaryFixed: Color(4278785024),
      primaryFixedDim: Color(4289909129),
      onPrimaryFixedVariant: Color(4280695812),
      secondaryFixed: Color(4291423911),
      onSecondaryFixed: Color(4278588672),
      secondaryFixedDim: Color(4289646989),
      onSecondaryFixedVariant: Color(4280368393),
      tertiaryFixed: Color(4291683839),
      onTertiaryFixed: Color(4278194722),
      tertiaryFixedDim: Color(4288334842),
      onTertiaryFixedVariant: Color(4278204763),
      surfaceDim: Color(4279374862),
      surfaceBright: Color(4281874994),
      surfaceContainerLowest: Color(4279045897),
      surfaceContainerLow: Color(4279901206),
      surfaceContainer: Color(4280164378),
      surfaceContainerHigh: Color(4280822564),
      surfaceContainerHighest: Color(4281546286),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294246367),
      surfaceTint: Color(4289909129),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4290237837),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294180834),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4289910417),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294572799),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4288598271),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374862),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294573293),
      outline: Color(4291415230),
      outlineVariant: Color(4291415230),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059544),
      inversePrimary: Color(4279971584),
      primaryFixed: Color(4292014502),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4290237837),
      onPrimaryFixedVariant: Color(4279048704),
      secondaryFixed: Color(4291687083),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4289910417),
      onSecondaryFixedVariant: Color(4278786560),
      tertiaryFixed: Color(4292209151),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4288598271),
      onTertiaryFixedVariant: Color(4278196266),
      surfaceDim: Color(4279374862),
      surfaceBright: Color(4281874994),
      surfaceContainerLowest: Color(4279045897),
      surfaceContainerLow: Color(4279901206),
      surfaceContainer: Color(4280164378),
      surfaceContainerHigh: Color(4280822564),
      surfaceContainerHighest: Color(4281546286),
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
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

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
