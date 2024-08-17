// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'page12_1.dart';
import 'page12_2.dart';
import 'page12_3.dart';
import 'page12_4.dart';

// ignore: camel_case_types
class Page12Screen extends StatelessWidget {
  const Page12Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DECEMBER'),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(223, 159, 249, 255),
                Color.fromARGB(255, 23, 136, 176)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          )
      ),
      
         body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/g35.gif'),
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
        builder: (context) => const Page12_1Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 5'),
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
        builder: (context) => const Page12_2Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 10'),
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
        builder: (context) => const Page12_3Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 25'),
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
        builder: (context) => const Page12_4Screen(),
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