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
        width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(0, 3), 
              ),
            ],
          ),
          margin: const EdgeInsets.all(5.0),
          child :
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(map.imagePath,fit: BoxFit.cover),),
          ),
      );
  }
}