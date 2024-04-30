import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/screens/widgets/category.dart';
import 'package:project/screens/widgets/product_item.dart';
import 'package:project/utils/ui_sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final boxShadow = BoxShadow(
      color: Colors.black.withOpacity(0.25),
      spreadRadius: 0,
      blurRadius: 4,
      offset: const Offset(0, 0),
    );

    return SingleChildScrollView(
      child: SizedBox(
        width: UiSizes.width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: UiSizes.width_15, top: UiSizes.height_20),
              child: Row(
                children: [
                  Text(
                    'Let’s find the\nbest furniture\nfor you',
                    style: theme.textTheme.headlineMedium!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: UiSizes.width_15,
                  right: UiSizes.width_15,
                  top: UiSizes.height_18,
                  bottom: UiSizes.height_10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: theme.colorScheme.onPrimary,
                        boxShadow: [boxShadow],
                      ),
                      child: TextField(
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Search for furnitures...',
                          hintStyle: theme.textTheme.headlineMedium!.copyWith(
                            fontSize: 10,
                            color: const Color.fromARGB(255, 104, 98, 98),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 5),
                          prefixIcon: const Icon(
                            size: 24,
                            Icons.search_outlined,
                            color: Color.fromARGB(255, 104, 98, 98),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 11),
                            child: SvgPicture.asset(
                              'assets/svg/mic.svg',
                            ),
                          ),
                          suffixIconConstraints:
                              const BoxConstraints(maxHeight: 21.11),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 21),
                  Container(
                      width: 73,
                      height: 40,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: theme.colorScheme.onPrimary,
                        boxShadow: [boxShadow],
                      ),
                      child: SvgPicture.asset(
                        'assets/svg/add_a_photo.svg',
                        theme: const SvgTheme(
                          currentColor: Color.fromARGB(255, 30, 30, 30),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: UiSizes.width_15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'View all',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontSize: 10,
                      color: theme.colorScheme.onSurface,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: UiSizes.width_15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Category(name: 'Bed', svgName: 'bed'),
                  Category(name: 'Chair', svgName: 'chair'),
                  Category(name: 'Sofas', svgName: 'sofa'),
                  Category(name: 'Table', svgName: 'table'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: UiSizes.width_15,
                  right: UiSizes.width_15,
                  bottom: 8,
                  top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrivals',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'View all',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontSize: 10,
                      color: theme.colorScheme.onSurface,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: UiSizes.width_15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductWidget(
                    name: 'Brown Armless sofa',
                    pngName: 'brown_armless_sofa',
                    price: '156.00',
                    rating: '4.5',
                    seller: 'My site',
                  ),
                  ProductWidget(
                    name: 'Eames single chair',
                    pngName: 'eames_single_chair',
                    price: '95.00',
                    rating: '4.8',
                    seller: 'My art design',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: UiSizes.width_15,
                  right: UiSizes.width_15,
                  bottom: 8,
                  top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'View all',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontSize: 10,
                      color: theme.colorScheme.onSurface,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: UiSizes.width_15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductWidget(
                    name: 'Black single retro dining chair',
                    pngName: 'black_single_retro_dining_chair',
                    price: '65.00',
                    rating: '4.3',
                    seller: 'My art design',
                  ),
                  ProductWidget(
                    name: 'Grey lawson family sofa',
                    pngName: 'grey_lawson_family_sofa',
                    price: '156.00',
                    rating: '4.1',
                    seller: 'Urban decor',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: UiSizes.width_15,
                  right: UiSizes.width_15,
                  bottom: 8,
                  top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently Added',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'View all',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontSize: 10,
                      color: theme.colorScheme.onSurface,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: UiSizes.width_15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductWidget(
                    name: 'Blue single seater sofa',
                    pngName: 'blue_single_seater_sofa',
                    price: '85.00',
                    rating: '4.5',
                    seller: 'Boho home  ',
                  ),
                  ProductWidget(
                    name: 'Modern blue cabinet',
                    pngName: 'modern_blue_cabinet',
                    price: '56.00',
                    rating: '4.2',
                    seller: 'My art design  ',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: UiSizes.width_15,
                  right: UiSizes.width_15,
                  bottom: 8,
                  top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Selling',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'View all',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontSize: 10,
                      color: theme.colorScheme.onSurface,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: UiSizes.width_15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductWidget(
                    name: 'Brown 3 seater sofa',
                    pngName: 'brown_3_seater_sofa',
                    price: '120.00',
                    rating: '4.3',
                    seller: 'Boho home  ',
                  ),
                  ProductWidget(
                    name: 'King size upholstered bed',
                    pngName: 'king_size_upholstered_bed',
                    price: '176.00',
                    rating: '4.7',
                    seller: 'Urban decor  ',
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          ],
        ),
      ),
    );
  }
}
