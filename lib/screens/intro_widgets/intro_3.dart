import 'package:flutter/material.dart';
import 'package:project/utils/ui_sizes.dart';

class OnBoardingIntro3 extends StatelessWidget {
  const OnBoardingIntro3({required this.onNextButtonPressed, super.key});

  final Function onNextButtonPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: UiSizes.height,
      width: UiSizes.width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: UiSizes.height_516_6,
              padding: EdgeInsets.only(bottom: UiSizes.height_14),
              child: Image.asset(
                'assets/images/onboarding_3.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: UiSizes.height_110,
                  bottom: UiSizes.height_20,
                ),
                child: Text(
                  "Minimal Furniture's",
                  style: theme.textTheme.headlineLarge!.copyWith(
                    fontSize: 32,
                    color: theme.colorScheme.secondary,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: UiSizes.height_22_5),
                child: Text(
                  'Our products combine functional stability\nwith elegance, keeping in view the\nefficient use of floor space.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: EdgeInsets.only(
                  bottom: UiSizes.height_102_5,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    onNextButtonPressed();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.primary,
                      foregroundColor: theme.colorScheme.onPrimary,
                      fixedSize: const Size(206, 48)),
                  child: Text(
                    'Create Account',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
