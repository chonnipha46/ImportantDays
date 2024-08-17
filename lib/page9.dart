// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page9Screen extends StatelessWidget {
  const Page9Screen({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SEPTEMBER'),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(232, 88, 160, 194),
                Color.fromARGB(224, 61, 80, 150)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          )
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/g32.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(height: 10),
            Container(
                    margin: EdgeInsets.all(16.0),
                    width: MediaQuery.of(context).size.width * 1.5,
                    height: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
  Row(
    mainAxisAlignment: MainAxisAlignment.center, // จัดการให้ตรงกลางแนวนอน
    crossAxisAlignment: CrossAxisAlignment.center, // จัดการให้ตรงกลางแนวตั้ง
    children: [
      Text(
        'ในเดือนกันยายนไม่มีวันสำคัญ',
        style: TextStyle(
          color: Color.fromARGB(255, 82, 7, 114),
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
  SizedBox(height: 6),
],
                  ),
                ),
              ),
              SizedBox(height: 18.0),
              
          ],
        ),        
      ),
    );
  }
}
