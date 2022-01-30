import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        brightness: Brightness.light,
        /* light theme settings */
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
