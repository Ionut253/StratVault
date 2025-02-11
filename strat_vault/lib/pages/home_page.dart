import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:strat_vault/components/map_tile.dart';
import 'package:strat_vault/models/map.dart';
import 'package:strat_vault/pages/map_page.dart';
import 'package:strat_vault/provider/provider.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<CSMap> maps = MapsProvider().getMaps;

  void navigateToMapPage(CSMap map) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MapPage(map: map)));
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 109, 120, 109),
      drawer: Drawer(
        
        backgroundColor: const Color.fromARGB(227, 49, 55, 49),
        child:  Column(
          children: [
            const SizedBox(height: 50),

            ListTile(
              title: const Text('S E T T I N G S', style: TextStyle(color: Colors.white), ),
              leading: const Icon(Icons.settings, color: Colors.white),
              enableFeedback: false,
              onTap: () {
                // go on settings page
              },
            ),

            ListTile(
              title: const Text('A B O U T', style: TextStyle(color: Colors.white), ),
              leading: const Icon(Icons.info, color: Colors.white),
              enableFeedback: false,
              onTap: () {
                // go on about page
              },
            ),
            
            ListTile(
              title: const Text('C O N T A C T S', style: TextStyle(color: Colors.white), ),
              leading: const Icon(Icons.contact_mail, color: Colors.white),
              enableFeedback: false,
              onTap: () {
                // go on contacts page
              },
            ),
          
            const SizedBox(height: 200),

            // at the end of the drawer should be the name or the app logo 
            // and the version of the app

          ],
        ),
        
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          style: const ButtonStyle(
            enableFeedback: false,
          ),
          icon: Image.asset('lib/images/menu.png', color: const Color.fromARGB(255, 19, 15, 15), width: 30, height: 30,),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        elevation: 0,
        title: const Text('MAP POOL', style: TextStyle(
          color:  Color.fromARGB(255, 54, 20, 20),
          fontSize: 25,
          fontFamily: 'Camcode',
        ),),
        centerTitle: true,

      
    ),
      body: Column(
        children: [
          const SizedBox(height: 10),

          Expanded(child: ListView.builder(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemCount: maps.length - 4,
              itemBuilder: (context, index) => MapTile(map: maps[index], onTap: () => navigateToMapPage(maps[index]),),
            ),
          ),

          Expanded(child: ListView.builder(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemCount: maps.length - 4 ,
              itemBuilder: (context, index) => MapTile(map: maps[index + 4], onTap: () => navigateToMapPage(maps[index + 4]),),
            ),
          ),


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

