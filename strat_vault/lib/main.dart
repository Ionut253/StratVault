import 'package:flutter/material.dart';
import 'package:strat_vault/pages/home_page.dart';
import 'package:strat_vault/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StratVault',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/homepage': (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
      
    );  
  }
}
