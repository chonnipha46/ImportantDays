// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: camel_case_types
class profileScreen extends StatelessWidget {
  const profileScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('สมาชิกผู้จัดทำ'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(197, 87, 17, 17),
                Color.fromARGB(221, 108, 0, 134)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          )),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/g1.gif'), // ระบุตำแหน่งของไฟล์ GIF ใน assets
            fit: BoxFit.cover, // ปรับขนาดภาพให้เต็ม Container
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 18.0),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/bu4.jpg'), // ใส่ที่อยู่รูปภาพของคุณที่นี่
                radius: 30, // ปรับขนาดของ CircleAvatar ตามต้องการ
              ),
              title: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), // เพิ่มเส้นขอบสีดำ
                  borderRadius:
                      BorderRadius.circular(8), // เพิ่มมุมขอบของ Container
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  'ชลนิภา รื่นถวิล',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.0),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/bu3.jpg'), // ใส่ที่อยู่รูปภาพของคุณที่นี่
                radius: 30, // ปรับขนาดของ CircleAvatar ตามต้องการ
              ),
              title: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), // เพิ่มเส้นขอบสีดำ
                  borderRadius:
                      BorderRadius.circular(8), // เพิ่มมุมขอบของ Container
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  'อรไพลิน อินคง',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
