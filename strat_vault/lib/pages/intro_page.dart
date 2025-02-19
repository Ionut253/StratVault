import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:strat_vault/components/button.dart';
import 'package:strat_vault/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  bool _DontShowAgain = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkPreferences();
  }

  Future<void> _checkPreferences() async{
      final pref = await SharedPreferences.getInstance();
      bool shouldSkipIntro  =  pref.getBool('dontShowAgain') ?? false;
      if (shouldSkipIntro ) {
        Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) {
          Navigator.pushNamed(context, '/homepage');
        }
      });
      } else {
        setState(() {
        _DontShowAgain = shouldSkipIntro ;
        _isLoading = false;
      });
      }

  }

  Future<void> _savePreferences() async{
    final pref = await SharedPreferences.getInstance();
    await pref.setBool('dontShowAgain', _DontShowAgain);
  }

  void navigateToHomePage() {
    Navigator.push(context, PageRouteBuilder(
      transitionDuration: const Duration(seconds: 2),
      pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
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

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    if (_isLoading) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/homepage');
        },
        child: const Scaffold(
          backgroundColor: Colors.black,
          body: Center(child: CircularProgressIndicator()), // Placeholder while loading
        ),
      );
    }
    return SizedBox(
      height: screenHeight,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 80, 88, 80),
        body: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Center(
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Padding(
                     padding: EdgeInsets.only(top: screenHeight * 0.04, bottom: screenHeight * 0.05),
                     child: const Text(
                            ' StratVault',
                            style: TextStyle (
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontFamily: 'Penrise',
                              letterSpacing: 1.5
                            ),
                      ),
                   ),
                    
                    SizedBox(height: screenHeight * 0.25),
                
                    // logo 
                    SizedBox(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.5,
                      child: Image.asset('lib/images/logo_aplicatie_2.png', alignment: Alignment.center, fit: BoxFit.fill,)),
                    const Text(
                      'YOUR SECRET WEAPON IN CS2',
                      style: TextStyle(
                        color:  Color.fromARGB(255, 191, 191, 191),
                        fontSize: 20,
                        fontFamily: 'Tech Hard Grunge',
                      ),
                    ),
                
                  const SizedBox(
                      width: 300,
                      child: Text(
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
                
                  SizedBox(height: screenHeight * 0.03),
                
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right:8.0, top: screenHeight * 0.0013,bottom: 0),
                        child: MyButton(text: 'Get Started', onTap: () {
                          _savePreferences();
                          navigateToHomePage();
                          }),
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          Checkbox(
                                value: _DontShowAgain,
                                activeColor: Colors.grey.shade800,
                                overlayColor: WidgetStateProperty.all(Colors.transparent),
                                onChanged: (value) {
                                  setState(() {
                                    _DontShowAgain = value ?? false;
                                  });
                                },
                              ),
                          const Text(
                                "Don't show again",
                                style: TextStyle(color: Colors.white),
                              ),
                        ],
                      ),
                    ],
                  ),
                    ],
                    ),
              ),
            ),
        ),
    );
  }
}

