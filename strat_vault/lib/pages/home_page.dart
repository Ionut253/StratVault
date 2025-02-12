import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
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
    Navigator.push(context, PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) => MapPage(map: map),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SharedAxisTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          transitionType: SharedAxisTransitionType.horizontal,
          child: child,
        );
  }
  ));
  }


  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 109, 120, 109),
      drawer: Drawer(
        
        backgroundColor: const Color.fromARGB(23, 49, 55, 49),
        child:  Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 3, 6, 3),
              Color.fromARGB(0, 240, 250, 240),
            ], begin: Alignment.topLeft, end: Alignment.topRight),
          ),
          child: Column(
            children: [
              const SizedBox(height: 50),
          
              ListTile(
                title: const Text('SETTINGS',
                 style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Camcode',
                  letterSpacing: 3
                  ) , ),
                leading: const Icon(Icons.settings, color: Colors.white),
                enableFeedback: false,
                onTap: () {
                  // go on settings page
                },
              ),
          
              ListTile(
                title: const Text('ABOUT',
                 style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Camcode',
                  letterSpacing: 3
                  ) 
                  ),
                leading: const Icon(Icons.info, color: Colors.white),
                enableFeedback: false,
                onTap: () {
                  // go on about page
                },
              ),
              
              ListTile(
                title: const Text('CONTACTS', style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Camcode',
                  letterSpacing: 3
                  )),
                leading: const Icon(Icons.contact_mail, color: Colors.white),
                enableFeedback: false,
                onTap: () {
                  // go on contacts page
                },
              ),
            
              const SizedBox(height: 515),
          
              const Padding(
                padding: EdgeInsets.only(top: 42, right: 20),
                child: Text(
                      ' StratVault',
                      style: TextStyle (
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 17,
                        fontFamily: 'Penrise',
                        letterSpacing: 2,
                      ),
                    ),
              ),
            ],
          ),
        ),
        
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          style: const ButtonStyle(
            enableFeedback: false,
          ),
          icon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset('lib/images/menu.png', color: const Color.fromARGB(255, 255, 255, 255), width: 25, height: 25,),
          ),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        elevation: 0,
        title: const Padding(
          padding:  EdgeInsets.only(left:20.0),
          child:  Text('MAP POOL', style: TextStyle(
            color:  Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
            fontFamily: 'Penrise',
          ),),
        ),
        centerTitle: true,

      
    ),
      body: Container(
          decoration: const BoxDecoration(
            gradient:  LinearGradient(colors: [
              Color.fromARGB(255, 56, 66, 56),
              Color.fromARGB(255, 109, 120, 109),
             
            ], begin: Alignment.topCenter, end: Alignment.center),
          ),
          child: Center(
            child: Column(
            
              children: [
                const SizedBox(height: 100),
            
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
          ),
        ),
      );
    
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

  }
}

