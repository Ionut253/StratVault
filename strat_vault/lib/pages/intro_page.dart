import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strat_vault/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 80, 88, 80),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),

              // app name 
              const Padding(
                padding: EdgeInsets.only(bottom:40.0),
                child: Text(
                    ' StratVault',
                    style: TextStyle (
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontFamily: 'Penrise',
                      letterSpacing: 1.5
                    ),
                  ),
              ),
              
              const SizedBox(height: 10),

              // logo 
              Padding(
                padding: const EdgeInsets.only(left:30.0, right: 50.0, top: 70.0, bottom: 10.0),
                child: Image.asset('lib/images/logo_aplicatie_2.png', height: 300, width: 300, alignment: Alignment.center,),
                
              ),

              const Text(
                'YOUR SECRET WEAPON IN CS2',
                style: TextStyle(
                  color:  Color.fromARGB(255, 191, 191, 191),
                  fontSize: 20,
                  fontFamily: 'Tech Hard Grunge',
                ),
              ),


              const SizedBox(height: 5),
          

              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                child:  Text(
                  'Explore the best CS2 lineups, tactics, and strategies for every map. From pixel-perfect smokes to deadly executes, this app gives you the winning edge in every match.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 187, 187, 187),
                    fontSize: 8,
                    height: 1.5,
                    fontFamily: 'Camcode',
                    
                
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 30),

              MyButton(text: 'Get Started', onTap: () {
                Navigator.pushNamed(context, '/homepage');
              }),
            ],
          ),
        ),
      );
  }
}

