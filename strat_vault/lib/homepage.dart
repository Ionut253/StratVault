import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: GNav(
        gap: 10,
        backgroundColor: Color.fromARGB(255, 3, 83, 44),
        color: Color.fromARGB(255, 255, 255, 255) ,
        activeColor: Color.fromARGB(255, 3, 83, 44),

        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.favorite, text: 'Favourites'),
          GButton(icon: Icons.settings, text: 'Settings'),
        ])
    );
  }
}

