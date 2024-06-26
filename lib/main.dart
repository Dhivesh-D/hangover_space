import 'package:flutter/material.dart';
import 'package:hangover/pages/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hangover/pages/main_page.dart';
import 'package:hangover/themes/dark.dart';
import 'package:hangover/themes/light.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,

      home: MainPage(),
    );
  }
}
