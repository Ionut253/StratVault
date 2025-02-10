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
            color: const Color.fromARGB(255, 9, 204, 139),
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text, 
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
      
            const SizedBox(width: 15),
      
            const Icon(Icons.arrow_forward, color: Colors.white, 
              size: 15,
            ),
      
            ],
          ),
      ),
    );
  }
}