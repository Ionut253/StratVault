import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:strat_vault/firebase_options.dart';
import 'package:strat_vault/pages/home_page.dart';
import 'package:strat_vault/pages/intro_page.dart';
import 'package:strat_vault/pages/test_page.dart';
import 'package:strat_vault/repository/firestore.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(options: const FirebaseOptions(
      apiKey: "AIzaSyALcOkHCmJgo2INXBaIa5X8_Y2evXyHZ2M",
      authDomain: "stratvault.firebaseapp.com",
      projectId: "stratvault",
      storageBucket: "stratvault.firebasestorage.app",
      messagingSenderId: "587596223692",
      appId: "1:587596223692:web:f807cd7896819f444cde69",
      measurementId: "G-KX05XCTCPQ"));
  }
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
  androidProvider: AndroidProvider.playIntegrity,
  appleProvider: AppleProvider.deviceCheck,
);
  runApp(
    ChangeNotifierProvider(
      create: (context) => FirestoreService(),
      child: const MyApp(),
    )
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      child: MaterialApp(
        title: 'StratVault',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        home: const TestPage(),
        routes: {
          '/intropage': (context) => const IntroPage(),
          '/homepage': (context) => const HomePage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );  
  }
}
