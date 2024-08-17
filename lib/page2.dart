// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'page2_1.dart';
import 'page2_2.dart';

// ignore: camel_case_types
class Page2Screen extends StatelessWidget {
  const Page2Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('FEBRUARY'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(198, 208, 53, 255),
                Color.fromARGB(197, 255, 75, 138)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          )),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/g25.gif'),
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
                    builder: (context) => const Page2_1Screen(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('วันที่ 14'),
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
                    builder: (context) => const Page2_2Screen(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('วันที่ 24'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
