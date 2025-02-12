import 'package:strat_vault/models/map.dart';
import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  final CSMap map;
  const MapPage({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFF576157),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            map.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Camcode',
            ),
          ),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              InteractiveViewer(
                child: Image.asset(map.calloutsPath),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: TabBar(
                  indicatorSize:TabBarIndicatorSize.tab, 
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: const Color.fromARGB(255, 46, 10, 10),
                    borderRadius: BorderRadius.circular(20),
                  ),                  
                  tabs: const [
                    Text(
                        'UTILITIES',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Camcode',)),
                    Text(
                        'CALLOUTS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Camcode',))
                  ]
                  ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:const TabBarView(
                  children: [
                    Center(child: Text('Utilities')),
                    Center(child: Text('Callouts')),
                  ]
                   ),
              )
          ],
          ),
        ),
      ),
    );
  }
}