import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function() onTap; 
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(59, 191, 191, 191),
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 20,),
              Text(text, 
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Tech Hard Grunge',
                ),
              ),
      
            const SizedBox(width: 15),
      
            const Icon(Icons.arrow_forward_ios, color: Colors.white, 
                size: 15,
              ),
      
            ],
          ),
      ),
    );
  }
}