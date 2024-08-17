// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'page10_1.dart';
import 'page10_2.dart';

// ignore: camel_case_types
class Page10Screen extends StatelessWidget {
  const Page10Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OCTOBER'),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(223, 0, 217, 255),
                Color.fromARGB(255, 0, 140, 255)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          )
      ),
      
         body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/g33.gif'),
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
        builder: (context) => const Page10_1Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 17'),
    ],
  ),
),
          const SizedBox(height: 25,),
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
        builder: (context) => const Page10_2Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 31'),
    ],
  ),
),
        ],
      ),
         ),
    );
  }
}