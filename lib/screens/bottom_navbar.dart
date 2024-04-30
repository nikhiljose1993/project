import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/home.dart';
import 'package:project/utils/ui_sizes.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() {
    return _BottomNavBarState();
  }
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const Center(
            child: Text(
          'Categories',
          style: TextStyle(color: Colors.black),
        ));
      case 2:
        return const Center(
            child: Text(
          'Wishlist',
          style: TextStyle(color: Colors.black),
        ));
      case 3:
        return const Center(
            child: Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ));
      case 4:
        return const Center(
            child: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ));
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 34,
          width: 34,
          padding: EdgeInsets.only(left: UiSizes.width_15),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image.asset(
              'assets/images/avatar.png',
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: theme.textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
            ),
            Text(
              'Anjali',
              style: GoogleFonts.inter(
                fontSize: 10,
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 12.17),
            child: InkWell(
              child: SvgPicture.asset('assets/svg/cart.svg'),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 21),
            child: InkWell(
              child: SvgPicture.asset('assets/svg/menu.svg'),
            ),
          ),
        ],
      ),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedIndex == 0
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onPrimary,
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                    'assets/svg/${_selectedIndex == 0 ? 'home_active' : 'home'}.svg'),
                onPressed: () => _onItemTapped(0),
              ),
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedIndex == 1
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onPrimary,
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                    'assets/svg/${_selectedIndex == 1 ? 'categories_active' : 'categories'}.svg'),
                onPressed: () => _onItemTapped(1),
              ),
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedIndex == 2
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onPrimary,
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                    'assets/svg/${_selectedIndex == 2 ? 'favorites_active' : 'favorites'}.svg'),
                onPressed: () => _onItemTapped(2),
              ),
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedIndex == 3
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onPrimary,
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                    'assets/svg/${_selectedIndex == 3 ? 'bell_active' : 'bell'}.svg'),
                onPressed: () => _onItemTapped(3),
              ),
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedIndex == 4
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onPrimary,
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                    'assets/svg/${_selectedIndex == 4 ? 'profile_circled_active' : 'profile_circled'}.svg'),
                onPressed: () => _onItemTapped(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
