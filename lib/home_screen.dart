import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var counter = 0;

  void CounterAdder() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(100.0),
                    child: Column(
                      children: [
                        Text(
                          "Counter",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                          width: 30,
                        ),
                        Text(
                          '$counter',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                  color: Colors.deepPurple,
                                )
                              ],
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.purple[400],
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 20,
                        color: Colors.deepPurple,
                      )
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: FloatingActionButton(
                onPressed: CounterAdder,
                child: Icon(Icons.add_box_rounded),
                backgroundColor: Colors.purple[400],
              ),
            )
          ],
        ),
      ),
    );
  }
}
