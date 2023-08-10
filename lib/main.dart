import 'package:counterapp/home_screen.dart';
import 'package:counterapp/splashscreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "counterapp",
      home: SplashScreen(),
    );
  }
}
