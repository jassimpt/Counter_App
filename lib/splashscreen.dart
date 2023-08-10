import 'package:counterapp/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    waiting();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                Image.asset('assets/images/counter_final.png'),
                Text(
                  "C O U N T E R",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> waiting() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }
}
