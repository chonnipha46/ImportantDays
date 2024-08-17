// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, library_private_types_in_public_api, camel_case_types, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

// ignore: camel_case_types
class Page2_1Screen extends StatefulWidget {
  const Page2_1Screen({Key? key}) : super(key: key);

  @override
  _Page2_1ScreenState createState() => _Page2_1ScreenState();
}

class _Page2_1ScreenState extends State<Page2_1Screen> {
  int daysRemaining = 0;
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;
  void calculateDaysRemaining() {
    DateTime targetDate = DateTime(2024, 2, 14); // ตั้งค่าวันที่ที่คุณต้องการนับถอยหลัง
    DateTime currentDate = DateTime.now();
    Duration difference = targetDate.difference(currentDate);

    setState(() {
      daysRemaining = difference.inDays;
    });
  }

  @override
  void initState() {
    super.initState();
    calculateDaysRemaining();
  }

  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  void toggleAudio() async {
    if (isPlaying) {
      // ถ้าเพลงกำลังเล่น ให้หยุดเล่น
      await audioPlayer.pause();
    } else {
      // ถ้าเพลงไม่ได้เล่นอยู่ ให้เล่นเพลง
      await audioPlayer.open(Audio('assets/music/2_1.mp3'));
      await audioPlayer.play();
    }

    setState(() {
      isPlaying = !isPlaying;
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('วันที่ 14'),
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
          )
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/g5.gif'), // ระบุตำแหน่งของไฟล์ GIF ใน assets
            fit: BoxFit.cover, // ปรับขนาดภาพให้เต็ม Container
          ),
        ),
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
            SizedBox(height: 10),
            Container(
                    margin: EdgeInsets.all(16.0),
                    width: MediaQuery.of(context).size.width * 1.5,
                    height: MediaQuery.of(context).size.width * 0.9,
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
                    children: [
                      Center(
                        child: Text(
                          'วันวาเลนไทน์ :',
                          style: TextStyle(
                            color: Color.fromARGB(255, 82, 7, 114),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      SizedBox(width: 40),
                      Text(
                        'จัดขึ้นเพื่อระลึกถึงการจากไปของนักบุญ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 7, 114),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'วาเลนไทน์ ผู้ที่ทำให้ผู้คนตระหนักถึงความรักและ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 7, 114),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'มิตรภาพอันบริสุทธิ์',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 7, 114),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                      children: [
                        Text(
                          '\n',
                          style: TextStyle(
                            color: Color.fromARGB(255, 82, 7, 114),
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  
                  SizedBox(height: 6),
                  Row(
                    children: [   
                      Text(
                        'กิจกรรม : ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 7, 114),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                          ),
                       ],
                      ),
                    SizedBox(height: 6),
                  Row(
                    children: [   
                      SizedBox(width: 40),
                      Text(
                        'มอบดอกไม้ ช็อกโกแลต การ์ดอวยพร หรือ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 7, 114),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                          ),
                       ],
                      ),
                       Row(
                    children: [   
                      Text(
                        'ของขวัญให้แก่กัน ห้างร้านต่าง ๆ ก็มักจะตกแต่ง',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 7, 114),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                          ),
                       ],
                      ),
                      Row(
                    children: [   
                      Text(
                        'ด้วยโทนสีสันสดใส โดยเฉพาะสีแดง และสีชมพู',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 7, 114),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                          ),
                       ],
                      ),
                      Row(
                    children: [   
                      Text(
                        'มีการวางจำหน่ายดอกไม้ สินค้าที่ระลึก ที่เกี่ยวข้อง',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 7, 114),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                          ),
                       ],
                      ),
                      Row(
                    children: [   
                      Text(
                        'กับวันวาเลนไทน์',
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
              Container(
              child: Column(
                children: [
                  // แสดงจำนวนวันที่เหลือ
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'จำนวนวันที่เหลือ: ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 7, 114),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$daysRemaining วัน',
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 7, 114),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  // ปุ่มเล่นและหยุดเพลง
                  IconButton(
                    icon: AnimatedSwitcher(
                      duration: Duration(milliseconds: 300),
                      child: isPlaying
                          ? Icon(
                              Icons.pause,
                              key: ValueKey<bool>(true),
                              size: 50,
                            )
                          : Icon(
                              Icons.play_arrow,
                              key: ValueKey<bool>(false),
                              size: 50,
                            ),
                    ),
                    onPressed: toggleAudio,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}