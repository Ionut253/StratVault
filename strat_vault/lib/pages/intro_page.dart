import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strat_vault/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 228, 151),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              
              // app name 
              Text(
                'Welcome to StratVault',
                style: GoogleFonts.playfairDisplay (
                  color: const Color.fromARGB(255, 54, 20, 20),
                  fontSize: 25,
                ),
              ),


              // logo 
              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('lib/images/smoke-grenade.png', height: 200, width: 200),
              ),

              const SizedBox(height: 25),

              Text(
                'YOUR SECRET WEAPON IN CS2',
                style: GoogleFonts.playfairDisplay(
                  color: const Color.fromARGB(255, 205, 152, 152),
                  fontSize: 35,
                ),
              ),


              const SizedBox(height: 10),
          

              Text(
                'Explore the best CS2 lineups, tactics, and strategies for every map. From pixel-perfect smokes to deadly executes, this app gives you the winning edge in every match.',
                style: GoogleFonts.tektur(
                  color: const Color.fromARGB(255, 160, 100, 100),
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 25),

              MyButton(text: 'Get Started', onTap: () {
                Navigator.pushNamed(context, '/homepage');
              }),
            ],
          ),
        ),
      );
  }
}

