import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/utils/ui_sizes.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {required this.name,
      required this.pngName,
      required this.price,
      required this.rating,
      required this.seller,
      super.key});

  final String name, pngName, price, rating, seller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final boxShadow = BoxShadow(
      color: Colors.black.withOpacity(0.25),
      spreadRadius: 0,
      blurRadius: 4,
      offset: const Offset(0, 0),
    );

    return SizedBox(
      width: UiSizes.width_185,
      child: AspectRatio(
        aspectRatio: 169 / 220,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: theme.colorScheme.onPrimary,
            boxShadow: [boxShadow],
          ),
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: AspectRatio(
                                aspectRatio: 150 / 133,
                                child: Image.asset(
                                  'assets/images/products/$pngName.png',
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              name,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w600,
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              seller,
                              style: theme.textTheme.bodySmall!.copyWith(
                                fontSize: 10,
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              'Price \$$price',
                              style: theme.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w600,
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          theme.colorScheme.onPrimary,
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(5),
                                    ),
                                    child: SvgPicture.asset(
                                        'assets/svg/heart.svg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: UiSizes.height_76),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: theme.colorScheme.onPrimary,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 2),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SvgPicture.asset('assets/svg/star.svg'),
                                        Text(
                                          rating,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            fontSize: 10,
                                            color: theme.colorScheme.onSurface,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.secondary,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(6),
                    ),
                    child: SvgPicture.asset('assets/svg/add.svg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
