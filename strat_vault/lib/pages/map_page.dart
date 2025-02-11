import 'package:flutter/material.dart';
import 'package:strat_vault/models/map.dart';

class MapPage extends StatelessWidget {

  final CSMap map;
  const MapPage({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 228, 151),
      appBar: AppBar(
        title: Text(map.name),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text('Map Page'),
      ),

    );
  }
}