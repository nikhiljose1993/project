import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Category extends StatelessWidget {
  const Category({required this.name, required this.svgName, super.key});

  final String name;
  final String svgName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final boxShadow = BoxShadow(
      color: Colors.black.withOpacity(0.25),
      spreadRadius: 0,
      blurRadius: 4,
      offset: const Offset(0, 0),
    );

    return Container(
      width: 71,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: theme.colorScheme.onPrimary,
        boxShadow: [boxShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset('assets/svg/$svgName.svg'),
          Text(
            name,
            style: theme.textTheme.bodyMedium!.copyWith(
              fontSize: 10,
              color: const Color.fromARGB(255, 104, 98, 98),
            ),
          )
        ],
      ),
    );
  }
}
