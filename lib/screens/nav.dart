import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pavillion/screens/cards_screen.dart';
import 'package:pavillion/screens/payment_screen.dart';
import 'package:pavillion/screens/settings_screen.dart';
import 'package:pavillion/utilities/size_manager.dart';
import 'package:pavillion/screens/home_screen.dart';

class NavControl extends StatefulWidget {
  const NavControl({Key? key}) : super(key: key);

  @override
  _NavControlState createState() => _NavControlState();
}

class _NavControlState extends State<NavControl> {

  int _currentIndex = 0;
  final List _screens = [
    const HomeScreen(),
    const PaymentScreen(),
    const CardsScreen(),
    const SettingsScreen(),
  ];

  void _changeScreen(int value){
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FE),
      extendBody: true,
      body: SafeArea(
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(SizeMg.radius(10.0)),
          topLeft: Radius.circular(SizeMg.radius(10.0)),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF5243D2),
          selectedLabelStyle: GoogleFonts.manrope(
            fontWeight: FontWeight.w500,
            fontSize: SizeMg.text(13.0),
          ),
          unselectedLabelStyle: GoogleFonts.manrope(
            fontWeight: FontWeight.w500,
            fontSize: SizeMg.text(13.0),
          ),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _changeScreen,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: const ImageIcon(
                AssetImage('assets/image_icons/house_outlined.png'),
              ),
              activeIcon: Image.asset('assets/image_icons/house_filled.jpg'),
            ),
            BottomNavigationBarItem(
              label: 'Payment',
              icon: const ImageIcon(
                AssetImage('assets/image_icons/cardHolder_outlined.png'),
              ),
              activeIcon: Image.asset('assets/image_icons/cardHolder_filled.jpg'),
            ),
            BottomNavigationBarItem(
              label: 'Cards',
              icon: const ImageIcon(
                AssetImage('assets/image_icons/card_outlined.png'),
              ),
              activeIcon: Image.asset('assets/image_icons/card_filled.jpg'),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: const ImageIcon(
                AssetImage('assets/image_icons/settings_outlined.png'),
              ),
              activeIcon: Image.asset('assets/image_icons/settings_filled.jpg',),
            ),
          ],
        ),
      ),
    );
  }
}

