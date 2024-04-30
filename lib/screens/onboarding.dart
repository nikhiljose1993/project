import 'package:flutter/material.dart';
import 'package:project/screens/auth.dart';
import 'package:project/screens/intro_widgets/intro_2.dart';
import 'package:project/screens/intro_widgets/intro_1.dart';
import 'package:project/screens/intro_widgets/intro_3.dart';
import 'package:project/utils/ui_sizes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() {
    return _OnBoardingScreenState();
  }
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();

  void skipIntro() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const AuthScreen(),
      ),
    );
  }

  void nextPage() {
    controller.nextPage(duration: Durations.medium4, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: Stack(
          children: [
            PageView(
              controller: controller,
              children: [
                OnBoardingIntro1(
                  onNextButtonPressed: nextPage,
                  onSkipButtonPressed: skipIntro,
                ),
                OnBoardingIntro2(
                  onNextButtonPressed: nextPage,
                  onSkipButtonPressed: skipIntro,
                ),
                OnBoardingIntro3(
                  onNextButtonPressed: skipIntro,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: UiSizes.height * 0.065),
                    child: SmoothPageIndicator(
                      effect: ExpandingDotsEffect(
                        activeDotColor: theme.colorScheme.secondary,
                        dotWidth: 7,
                        dotHeight: 7,
                        expansionFactor: 3.57,
                      ),
                      controller: controller,
                      count: 3,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
