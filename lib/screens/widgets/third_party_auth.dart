import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/utils/ui_sizes.dart';

class ThirdPartyAuthWidget extends StatelessWidget {
  const ThirdPartyAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: theme.colorScheme.onPrimary,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          spreadRadius: 2,
          blurRadius: 4,
          offset: const Offset(0, 0),
        ),
      ],
    );

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: UiSizes.height_30),
          child: Text(
            'Or Connect using',
            style: theme.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w300,
              color: const Color.fromRGBO(113, 109, 109, 1),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: UiSizes.width_40, vertical: UiSizes.height_8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 80.35,
                height: 48,
                decoration: boxDecoration,
                child: Center(
                  child: SvgPicture.asset('assets/svg/facebook.svg'),
                ),
              ),
              Container(
                width: 80.35,
                height: 48,
                decoration: boxDecoration,
                child: Center(
                  child: SvgPicture.asset('assets/svg/google.svg'),
                ),
              ),
              Container(
                width: 80.35,
                height: 48,
                decoration: boxDecoration,
                child: Center(
                  child: SvgPicture.asset('assets/svg/apple.svg'),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
