import 'package:flutter/material.dart';
import 'package:project/utils/ui_sizes.dart';

class OnBoardingIntro1 extends StatelessWidget {
  const OnBoardingIntro1({
    required this.onNextButtonPressed,
    required this.onSkipButtonPressed,
    super.key,
  });

  final Function onNextButtonPressed;
  final Function onSkipButtonPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: UiSizes.height,
      width: UiSizes.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: UiSizes.height_516_6,
              padding: EdgeInsets.only(bottom: UiSizes.height_14),
              child: Image.asset(
                'assets/images/onboarding_1.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: UiSizes.height_26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        onSkipButtonPressed();
                      },
                      child: Text(
                        'Skip',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: UiSizes.height_40,
                  bottom: UiSizes.height_5_8,
                ),
                child: Text(
                  'Welcome to',
                  style: theme.textTheme.headlineMedium!.copyWith(
                    fontSize: 25,
                    color: theme.colorScheme.secondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                'Furnie',
                style: theme.textTheme.headlineLarge!.copyWith(
                  fontSize: 36,
                  color: theme.colorScheme.secondary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: UiSizes.height_22_5),
                child: Text(
                  'One app for all smart home elements.',
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: EdgeInsets.only(
                  bottom: UiSizes.height_140,
                  right: UiSizes.width_30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        onNextButtonPressed();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: theme.colorScheme.primary,
                          foregroundColor: theme.colorScheme.onPrimary,
                          fixedSize: const Size(206, 48)),
                      child: Text(
                        'Get Started',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            color: theme.colorScheme.onPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
