// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'page7_1.dart';
import 'page7_2.dart';

// ignore: camel_case_types
class Page7Screen extends StatelessWidget {
  const Page7Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JULY'),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(223, 183, 94, 140),
                Color.fromARGB(255, 196, 0, 114)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          )
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/g30.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(
              height: 20,
            ),
          ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    elevation: 0, // Shadow scale
  ),
  onPressed: () {
    // go to page2
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Page7_1Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 20'),
    ],
  ),
),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    elevation: 0, // Shadow scale
  ),
  onPressed: () {
    // go to page2
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Page7_2Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 21'),
    ],
  ),
),
        ],
      ),
      ),
    );
  }
}
