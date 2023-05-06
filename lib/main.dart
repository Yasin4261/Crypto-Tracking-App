import 'package:flutter/material.dart';
import 'view/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blink Crypto',
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.blueGrey),
            foregroundColor: Colors.blueGrey,
            backgroundColor: Colors.white),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
