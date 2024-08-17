// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'page11_1.dart';

// ignore: camel_case_types
class Page11Screen extends StatelessWidget {
  const Page11Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NOVEMBER'),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(223, 255, 210, 142),
                Color.fromARGB(255, 201, 141, 52)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          )
      ),
      
         body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/g34.gif'),
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
        builder: (context) => const Page11_1Screen(),
      ),
    );
  },
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('วันที่ 15'),
    ],
  ),
),
        ],
      ),
         ),
    );
  }
}