import 'package:flutter/material.dart';
import 'package:project/utils/ui_sizes.dart';

class OnBoardingIntro2 extends StatelessWidget {
  const OnBoardingIntro2({
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
        children: [
          SizedBox(
            height: UiSizes.height,
            width: UiSizes.width,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Image.asset('assets/images/onboarding_2.png'),
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
                  'Make Your',
                  style: theme.textTheme.headlineMedium!.copyWith(
                    fontSize: 25,
                    color: theme.colorScheme.secondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                'Dream House',
                style: theme.textTheme.headlineLarge!.copyWith(
                  fontSize: 32,
                  color: theme.colorScheme.secondary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: UiSizes.height_22_5),
                child: Text(
                  'Modern furniture make you want\nto stay in.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: EdgeInsets.only(
                  bottom: UiSizes.height_140,
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
                    'Continue',
                    style: theme.textTheme.bodyMedium!.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold),
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
