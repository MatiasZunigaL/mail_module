import 'dart:ui';

import 'package:flutkit/theme/app_theme.dart';
import 'package:flutkit/theme/theme_type.dart';

class MaterialTheme {
  static MaterialThemeData materialThemeData =
      AppTheme.themeType == ThemeType.light
          ? MaterialThemeData().light()
          : MaterialThemeData().dark();

  static MaterialThemeData learningLightTheme = MaterialThemeData()
      .light()
      .copyWith(
          primary: Color(0xff6874E8),
          onPrimary: Color(0xffffffff),
          primaryContainer: Color(0xffe9eafd),
          onPrimaryContainer: Color(0xff2033e7),
          secondary: Color(0xff548c2f),
          onSecondary: Color(0xffffffff),
          secondaryContainer: Color(0xffdef0d1),
          onSecondaryContainer: Color(0xff131F0a));

  static MaterialThemeData learningDarkTheme = MaterialThemeData()
      .dark()
      .copyWith(
          primary: Color(0xffcfd2ff),
          onPrimary: Color(0xff1529e8),
          primaryContainer: Color(0xff5563e8),
          onPrimaryContainer: Color(0xffe6e7fd),
          secondary: Color(0xffd3ebc1),
          onSecondary: Color(0xff253e14),
          secondaryContainer: Color(0xff4B7b28),
          onSecondaryContainer: Color(0xffe9f5e0));

  static MaterialThemeData learningTheme = AppTheme.themeType == ThemeType.light
      ? learningLightTheme
      : learningDarkTheme;

  static resetThemeData() {
    materialThemeData = AppTheme.themeType == ThemeType.light
        ? MaterialThemeData().light()
        : MaterialThemeData().dark();

    learningTheme = AppTheme.themeType == ThemeType.light
        ? learningLightTheme
        : learningDarkTheme;
  }
}

class MaterialThemeData {
  late Color primary,
      onPrimary,
      primaryContainer,
      onPrimaryContainer,
      secondary,
      onSecondary,
      secondaryContainer,
      onSecondaryContainer,
      tertiary,
      onTertiary,
      tertiaryContainer,
      onTertiaryContainer,
      error,
      onError,
      errorContainer,
      onErrorContainer,
      background,
      onBackground,
      surface,
      onSurface,
      surfaceVariant,
      onSurfaceVariant,
      outline,
      shimmerBaseColor,
      shimmerHighlightColor;

  late MaterialRadius containerRadius, buttonRadius, textFieldRadius;

  MaterialThemeData(
      {this.primary = const Color(0xff6750A4),
      this.onPrimary = const Color(0xffffffff),
      this.primaryContainer = const Color(0xffe8def8),
      this.onPrimaryContainer = const Color(0xff21025E),
      this.secondary = const Color(0xff625b71),
      this.onSecondary = const Color(0xffffffff),
      this.secondaryContainer = const Color(0xffe8def8),
      this.onSecondaryContainer = const Color(0xff000000),
      this.tertiary = const Color(0xff7d5260),
      this.onTertiary = const Color(0xffffffff),
      this.tertiaryContainer = const Color(0xfffbd8e4),
      this.onTertiaryContainer = const Color(0xff370b1e),
      this.error = const Color(0xffb3261e),
      this.onError = const Color(0xffffffff),
      this.errorContainer = const Color(0xfff9dedd),
      this.onErrorContainer = const Color(0xff370b1e),
      this.background = const Color(0xffffffff),
      this.onBackground = const Color(0xff000000),
      this.surface = const Color(0xffffffff),
      this.onSurface = const Color(0xff000000),
      this.surfaceVariant = const Color(0xffe7e0ec),
      this.onSurfaceVariant = const Color(0xff49454e),
      this.outline = const Color(0xff79747f),
      this.shimmerBaseColor = const Color(0xFFF5F5F5),
      this.shimmerHighlightColor = const Color(0xFFE0E0E0),
      MaterialRadius? containerRadius,
      MaterialRadius? buttonRadius,
      MaterialRadius? textFieldRadius}) {
    this.containerRadius = containerRadius ?? MaterialRadius();
    this.buttonRadius = containerRadius ?? MaterialRadius();
    this.textFieldRadius = containerRadius ?? MaterialRadius();
  }

  MaterialThemeData copyWith(
      {Color? primary,
      Color? onPrimary,
      Color? primaryContainer,
      Color? onPrimaryContainer,
      Color? secondary,
      Color? onSecondary,
      Color? secondaryContainer,
      Color? onSecondaryContainer,
      Color? tertiary,
      Color? onTertiary,
      Color? tertiaryContainer,
      Color? onTertiaryContainer,
      Color? error,
      Color? onError,
      Color? errorContainer,
      Color? onErrorContainer,
      Color? background,
      Color? onBackground,
      Color? surface,
      Color? onSurface,
      Color? surfaceVariant,
      Color? onSurfaceVariant,
      Color? outline,
      Color? shimmerBaseColor,
      Color? shimmerHighlightColor,
      MaterialRadius? containerRadius,
      MaterialRadius? buttonRadius,
      MaterialRadius? textFieldRadius}) {
    this.primary = primary ?? this.primary;
    this.onPrimary = onPrimary ?? this.onPrimary;
    this.primaryContainer = primaryContainer ?? this.primaryContainer;
    this.onPrimaryContainer = onPrimaryContainer ?? this.onPrimaryContainer;
    this.secondary = secondary ?? this.secondary;
    this.onSecondary = onSecondary ?? this.onSecondary;
    this.secondaryContainer = secondaryContainer ?? this.secondaryContainer;
    this.onSecondaryContainer =
        onSecondaryContainer ?? this.onSecondaryContainer;
    this.tertiary = tertiary ?? this.tertiary;
    this.onTertiary = onTertiary ?? this.onTertiary;
    this.tertiaryContainer = tertiaryContainer ?? this.tertiaryContainer;
    this.onTertiaryContainer = onTertiaryContainer ?? this.onTertiaryContainer;
    this.error = error ?? this.error;
    this.onError = onError ?? this.onError;
    this.errorContainer = errorContainer ?? this.errorContainer;
    this.onErrorContainer = onErrorContainer ?? this.onErrorContainer;
    this.background = background ?? this.background;
    this.onBackground = onBackground ?? this.onBackground;
    this.surface = surface ?? this.surface;
    this.onSurface = onSurface ?? this.onSurface;
    this.surfaceVariant = surfaceVariant ?? this.surfaceVariant;
    this.onSurfaceVariant = onSurfaceVariant ?? this.onSurfaceVariant;
    this.outline = outline ?? this.outline;
    this.shimmerBaseColor = shimmerBaseColor ?? this.shimmerBaseColor;
    this.shimmerHighlightColor =
        shimmerHighlightColor ?? this.shimmerHighlightColor;
    this.containerRadius = containerRadius ?? MaterialRadius();
    this.buttonRadius = containerRadius ?? MaterialRadius();
    this.textFieldRadius = containerRadius ?? MaterialRadius();
    return this;
  }

  MaterialThemeData light() {
    return copyWith();
  }

  MaterialThemeData dark() {
    return copyWith(
        primary: Color(0xffd0bcff),
        onPrimary: Color(0xff381e73),
        primaryContainer: Color(0xff4f378b),
        onPrimaryContainer: Color(0xffeaddff),
        secondary: Color(0xffcbc2cb),
        onSecondary: Color(0xff332d41),
        secondaryContainer: Color(0xff4a4458),
        onSecondaryContainer: Color(0xffe8def8),
        tertiary: Color(0xffefb8c8),
        onTertiary: Color(0xff4a2532),
        tertiaryContainer: Color(0xff633b48),
        onTertiaryContainer: Color(0xfffbd8e4),
        error: Color(0xfff2b8b5),
        onError: Color(0xff601411),
        errorContainer: Color(0xff8c1d19),
        onErrorContainer: Color(0xfff9dedd),
        background: Color(0xff000000),
        onBackground: Color(0xffe6e1e5),
        surface: Color(0xff000000),
        onSurface: Color(0xffe6e1e5),
        surfaceVariant: Color(0xff494550),
        onSurfaceVariant: Color(0xffcac4d0),
        outline: Color(0xff948f9a),
        shimmerBaseColor: Color(0xFF1a1a1a),
        shimmerHighlightColor: Color(0xFF454545));
  }
}

class MaterialRadius {
  late double small, medium, large;

  MaterialRadius({double small = 8, double medium = 16, double large = 24}) {
    this.small = small;
    this.medium = medium;
    this.large = large;
  }
}
