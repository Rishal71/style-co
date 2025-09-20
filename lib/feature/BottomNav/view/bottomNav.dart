import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_co/feature/BottomNav/controller/bottom_controller.dart';
import 'package:style_co/feature/Home/view/home.dart';

class Bottomnav extends StatelessWidget {
  const Bottomnav({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
    return Scaffold(
      body:
          _pages[Provider.of<BottomNavProvider>(
            context,
            listen: false,
          ).currentIndex],
      bottomNavigationBar: Consumer<BottomNavProvider>(
        builder: (context, value, child) {
          return CurvedNavigationBar(
            index: value.currentIndex,
            onTap: (index) => value.setIndex(index),

            backgroundColor: Theme.of(context)
                .scaffoldBackgroundColor,
            color: Colors.brown,
            buttonBackgroundColor: Colors.brown.shade700,

            items: const [
              Icon(Icons.home, color: Colors.white),
              Icon(Icons.search, color: Colors.white),
              Icon(Icons.favorite, color: Colors.white),
              Icon(Icons.person, color: Colors.white),
            ],
          );
        },
      ),
    );
  }
}
