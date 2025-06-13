import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff156683),
      surfaceTint: Color(0xff156683),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbfe9ff),
      onPrimaryContainer: Color(0xff004d65),
      secondary: Color(0xff4d616c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd0e6f3),
      onSecondaryContainer: Color(0xff364954),
      tertiary: Color(0xff5e5a7d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe4dfff),
      onTertiaryContainer: Color(0xff464364),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff171c1f),
      onSurfaceVariant: Color(0xff40484c),
      outline: Color(0xff70787d),
      outlineVariant: Color(0xffc0c8cd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inversePrimary: Color(0xff8ccff0),
      primaryFixed: Color(0xffbfe9ff),
      onPrimaryFixed: Color(0xff001f2a),
      primaryFixedDim: Color(0xff8ccff0),
      onPrimaryFixedVariant: Color(0xff004d65),
      secondaryFixed: Color(0xffd0e6f3),
      onSecondaryFixed: Color(0xff081e27),
      secondaryFixedDim: Color(0xffb4cad6),
      onSecondaryFixedVariant: Color(0xff364954),
      tertiaryFixed: Color(0xffe4dfff),
      onTertiaryFixed: Color(0xff1a1836),
      tertiaryFixedDim: Color(0xffc7c2ea),
      onTertiaryFixedVariant: Color(0xff464364),
      surfaceDim: Color(0xffd6dade),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffeaeef2),
      surfaceContainerHigh: Color(0xffe4e9ec),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003b4f),
      surfaceTint: Color(0xff156683),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2b7592),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff253943),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5c707b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff353253),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6d698d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff0d1215),
      onSurfaceVariant: Color(0xff30373c),
      outline: Color(0xff4c5458),
      outlineVariant: Color(0xff666e73),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inversePrimary: Color(0xff8ccff0),
      primaryFixed: Color(0xff2b7592),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff005c78),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5c707b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff445862),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6d698d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff545173),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc3c7cb),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffe4e9ec),
      surfaceContainerHigh: Color(0xffd9dde1),
      surfaceContainerHighest: Color(0xffced2d6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003041),
      surfaceTint: Color(0xff156683),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004f68),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1b2f38),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff384c56),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2b2848),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff484567),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff262d31),
      outlineVariant: Color(0xff434a4f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inversePrimary: Color(0xff8ccff0),
      primaryFixed: Color(0xff004f68),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00374a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff384c56),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff21353f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff484567),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff322f4f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb5b9bd),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffedf1f5),
      surfaceContainer: Color(0xffdfe3e7),
      surfaceContainerHigh: Color(0xffd1d5d9),
      surfaceContainerHighest: Color(0xffc3c7cb),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8ccff0),
      surfaceTint: Color(0xff8ccff0),
      onPrimary: Color(0xff003547),
      primaryContainer: Color(0xff004d65),
      onPrimaryContainer: Color(0xffbfe9ff),
      secondary: Color(0xffb4cad6),
      onSecondary: Color(0xff1f333d),
      secondaryContainer: Color(0xff364954),
      onSecondaryContainer: Color(0xffd0e6f3),
      tertiary: Color(0xffc7c2ea),
      onTertiary: Color(0xff2f2d4c),
      tertiaryContainer: Color(0xff464364),
      onTertiaryContainer: Color(0xffe4dfff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1417),
      onSurface: Color(0xffdfe3e7),
      onSurfaceVariant: Color(0xffc0c8cd),
      outline: Color(0xff8a9297),
      outlineVariant: Color(0xff40484c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inversePrimary: Color(0xff156683),
      primaryFixed: Color(0xffbfe9ff),
      onPrimaryFixed: Color(0xff001f2a),
      primaryFixedDim: Color(0xff8ccff0),
      onPrimaryFixedVariant: Color(0xff004d65),
      secondaryFixed: Color(0xffd0e6f3),
      onSecondaryFixed: Color(0xff081e27),
      secondaryFixedDim: Color(0xffb4cad6),
      onSecondaryFixedVariant: Color(0xff364954),
      tertiaryFixed: Color(0xffe4dfff),
      onTertiaryFixed: Color(0xff1a1836),
      tertiaryFixedDim: Color(0xffc7c2ea),
      onTertiaryFixedVariant: Color(0xff464364),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff171c1f),
      surfaceContainer: Color(0xff1b2023),
      surfaceContainerHigh: Color(0xff262b2e),
      surfaceContainerHighest: Color(0xff303538),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffafe4ff),
      surfaceTint: Color(0xff8ccff0),
      onPrimary: Color(0xff002938),
      primaryContainer: Color(0xff5599b8),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcae0ec),
      onSecondary: Color(0xff142832),
      secondaryContainer: Color(0xff7f949f),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffddd8ff),
      onTertiary: Color(0xff252241),
      tertiaryContainer: Color(0xff918db2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1417),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd6dde3),
      outline: Color(0xffabb3b8),
      outlineVariant: Color(0xff8a9196),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inversePrimary: Color(0xff004e67),
      primaryFixed: Color(0xffbfe9ff),
      onPrimaryFixed: Color(0xff00131c),
      primaryFixedDim: Color(0xff8ccff0),
      onPrimaryFixedVariant: Color(0xff003b4f),
      secondaryFixed: Color(0xffd0e6f3),
      onSecondaryFixed: Color(0xff00131c),
      secondaryFixedDim: Color(0xffb4cad6),
      onSecondaryFixedVariant: Color(0xff253943),
      tertiaryFixed: Color(0xffe4dfff),
      onTertiaryFixed: Color(0xff100d2b),
      tertiaryFixedDim: Color(0xffc7c2ea),
      onTertiaryFixedVariant: Color(0xff353253),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff404548),
      surfaceContainerLowest: Color(0xff04080a),
      surfaceContainerLow: Color(0xff191e21),
      surfaceContainer: Color(0xff24292b),
      surfaceContainerHigh: Color(0xff2e3336),
      surfaceContainerHighest: Color(0xff393e41),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffdff3ff),
      surfaceTint: Color(0xff8ccff0),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff88cbec),
      onPrimaryContainer: Color(0xff000d14),
      secondary: Color(0xffdff3ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb0c6d2),
      onSecondaryContainer: Color(0xff000d14),
      tertiary: Color(0xfff2edff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffc3bee6),
      onTertiaryContainer: Color(0xff0a0725),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff0f1417),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffeaf1f6),
      outlineVariant: Color(0xffbcc4c9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inversePrimary: Color(0xff004e67),
      primaryFixed: Color(0xffbfe9ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff8ccff0),
      onPrimaryFixedVariant: Color(0xff00131c),
      secondaryFixed: Color(0xffd0e6f3),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb4cad6),
      onSecondaryFixedVariant: Color(0xff00131c),
      tertiaryFixed: Color(0xffe4dfff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffc7c2ea),
      onTertiaryFixedVariant: Color(0xff100d2b),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff4c5154),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1b2023),
      surfaceContainer: Color(0xff2c3134),
      surfaceContainerHigh: Color(0xff373c3f),
      surfaceContainerHighest: Color(0xff42474b),
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
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
