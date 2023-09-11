import 'dart:math';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int nbr = 38;
  Random random = Random();

  int inf(int a) {
    return a < 0 ? 0 : a;
  }

  int supp(int a) {
    return a > 200 ? 200 : a;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(124, 0, 0, 0),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(176, 9, 0, 252),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    nbr.toString(),
                    style: TextStyle(fontSize: 120, color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(176, 9, 0, 252),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "plus",
                          style: TextStyle(fontSize: 33),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        nbr = supp(nbr + 1);
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(176, 9, 0, 252),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "minus",
                          style: TextStyle(fontSize: 33),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        nbr = inf(nbr - 1);
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: Container(
                width: 140,
                height: 80,
                decoration: BoxDecoration(
                  color: Color.fromARGB(176, 9, 0, 252),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "random",
                    style: TextStyle(fontSize: 33, color: Colors.white),
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  nbr = random.nextInt(200);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
