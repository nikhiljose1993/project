import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/onboarding.dart';
import 'package:project/utils/ui_sizes.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    UiSizes.init(context);

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild!.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData().copyWith(
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: const Color.fromARGB(255, 160, 140, 98),
            onPrimary: Colors.white,
            secondary: const Color.fromARGB(255, 21, 19, 68),
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.red.shade300,
            background: const Color.fromARGB(255, 255, 255, 255),
            onBackground: const Color.fromARGB(255, 16, 14, 52),
            surface: Colors.white,
            onSurface: const Color.fromARGB(255, 0, 0, 0),
          ),
          textTheme: TextTheme(
            headlineLarge: GoogleFonts.kaushanScript(),
            headlineMedium: GoogleFonts.inter(),
            bodyMedium: GoogleFonts.inter(fontSize: 14),
            bodySmall: GoogleFonts.inter(fontSize: 12),
          ),
        ),
        home: const OnBoardingScreen(),
      ),
    );
  }
}
