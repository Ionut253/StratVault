import 'package:flutter/material.dart';
import 'package:strat_vault/models/map.dart';

class MapTile extends StatelessWidget {
  final CSMap map;
  const MapTile({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(5.0),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            const SizedBox(height: 10),            
            Image.asset(map.imagePath, height: 300, fit: BoxFit.fill,),
            const SizedBox(height: 10),
            
          ],
        )
    );
  }
}