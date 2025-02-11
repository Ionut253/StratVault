import 'package:flutter/material.dart';
import 'package:strat_vault/models/map.dart';

class MapTile extends StatelessWidget {
  final CSMap map;
  final void Function()? onTap;
  const MapTile({super.key, required this.map, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(5.0),
          child : Column(
            
            children: [

              const SizedBox(height: 10),            
              Image.asset(map.imagePath, height: 200),
              const SizedBox(height: 10),
              
            ],
          )
      ),
    );
  }
}