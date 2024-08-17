// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'page5_1.dart';
import 'page5_2.dart';
import 'page5_3.dart';
import 'page5_4.dart';

// ignore: camel_case_types
class Page5Screen extends StatelessWidget {
  const Page5Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAY'),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(223, 187, 255, 175),
                Color.fromARGB(255, 94, 181, 96)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          )
      ),
      
         body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/g28.gif'),
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
        builder: (context) => const Page5_1Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 1'),
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
        builder: (context) => const Page5_2Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 4'),
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
        builder: (context) => const Page5_3Screen(),
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
        builder: (context) => const Page5_4Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 22'),
    ],
  ),
),
        ],
      ),
         ),
    );
  }
}