import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab2cuisine/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: GoogleFonts.prompt().fontFamily,
        textTheme: GoogleFonts.promptTextTheme(),
      ),
      home: const MyHomepage(),
    );
  }
}
