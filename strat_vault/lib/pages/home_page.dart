import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:strat_vault/components/map_tile.dart';
import 'package:strat_vault/models/map.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List maps = [
    CSMap(name: 'Mirage', imagePath: 'lib/images/test_map.png'),
    CSMap(name: 'Inferno', imagePath: 'lib/images/download.jpeg'),
    CSMap(name: 'Dust 2', imagePath: 'lib/images/test_map.png'),
    CSMap(name: 'Nuke', imagePath: 'lib/images/test_map.png'),
    CSMap(name: 'Overpass', imagePath: 'lib/images/test_map.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 228, 151),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.green),
          onPressed: () {},
        ),
        elevation: 0,
        actions:[IconButton(
          icon: const Icon(Icons.search, color: Colors.green),
          onPressed: () {},
        ),],
        title: Text('MAP POOL', style: GoogleFonts.playfairDisplay(
          color: const Color.fromARGB(255, 54, 20, 20),
          fontSize: 25,
        ),),
        centerTitle: true,

      
    ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            itemCount: maps.length,
            itemBuilder: (context, index) => MapTile(map: maps[index]),

          )),

          const SizedBox(height: 200 )

        ],
      ),
    
      // bottomNavigationBar: GNav(
      //   padding: const EdgeInsets.all(10),
      //   gap: 8,
      //   backgroundColor: const Color.fromARGB(255, 3, 83, 44),
      //   color: const Color.fromARGB(255, 255, 255, 255),
      //   activeColor: const Color.fromARGB(255, 3, 83, 44),
      //   onTabChange: (value) {
      //     print(value);
      //   },
      //   tabs: const [
      //     GButton(icon: Icons.home, text: 'Home'),
      //     GButton(icon: Icons.favorite, text: 'Favourites'),
      //     GButton(icon: Icons.settings, text: 'Settings'),
      //   ],
      // ),

    );

  }
}

