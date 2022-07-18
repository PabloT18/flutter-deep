import 'package:flutter/material.dart';
import 'package:flutter_deep/app/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
        brightness: Brightness.light,
        // colorScheme: ColorScheme.fromSwatch(
        //   // accentColor: Colors.green,
        //   // backgroundColor: Colors.yellow,

        // sche
        primarySwatch: AppColors.primaryBlueMaterial,
        textTheme: GoogleFonts.latoTextTheme()
            .apply(
              bodyColor: Colors.black, //<-- SEE HERE
              displayColor: Colors.black, //<
            )
            .copyWith(
              headline2: const TextStyle(fontSize: 26, color: Colors.grey),
              headline4: const TextStyle(fontSize: 20),
            )

        // appBarTheme: const AppBarTheme(
        //   color: Color(0xFF13B9FF),
        // ),
        // snackBarTheme: const SnackBarThemeData(
        //   behavior: SnackBarBehavior.floating,
        // ),
        // toggleableActiveColor: const Color(0xFF13B9FF),
        );
  }

  static ThemeData get dark {
    return ThemeData(
        brightness: Brightness.dark,
        // colorScheme: ColorScheme.fromSwatch(
        //   accentColor: const Color(0xFF13B9FF),
        // ),
        // primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme()
            .copyWith(
              headline2: const TextStyle(fontSize: 26),
            )
            .apply(
              bodyColor: Colors.white, //<-- SEE HERE
              displayColor: Colors.white, //<
            )

        //     headline1: const TextStyle(color: Colors.white),
        //     headline2: const TextStyle(color: Colors.white),
        //     bodyText2: const TextStyle(color: Colors.white),
        //     subtitle1: const TextStyle(color: Colors.white),
        //     caption: const TextStyle(
        //       color: Colors.white,
        //     )),
        // textTheme: GoogleFonts.latoTextTheme(),
        // appBarTheme: const AppBarTheme(
        //   color: Color(0xFF13B9FF),
        // ),
        // colorScheme: ColorScheme.fromSwatch(
        //   brightness: Brightness.dark,
        //   accentColor: const Color(0xFF13B9FF),
        // ),
        // snackBarTheme: const SnackBarThemeData(
        //   behavior: SnackBarBehavior.floating,
        // ),
        // toggleableActiveColor: const Color(0xFF13B9FF),
        );
  }
}
