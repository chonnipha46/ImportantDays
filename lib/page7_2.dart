// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, camel_case_types, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

// ignore: camel_case_types
class Page7_2Screen extends StatefulWidget {
  const Page7_2Screen({Key? key}) : super(key: key);

  @override
  _Page7_2ScreenState createState() => _Page7_2ScreenState();
}

class _Page7_2ScreenState extends State<Page7_2Screen> {
  int daysRemaining = 0;
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;

  void calculateDaysRemaining() {
    DateTime targetDate = DateTime(2024, 7, 21); // ตั้งค่าวันที่ที่คุณต้องการนับถอยหลัง
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
      await audioPlayer.open(Audio('assets/music/7_2.mp3'));
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
        title: const Text('วันที่ 21'),
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
            image: AssetImage(
                'assets/images/g14.gif'), // ระบุตำแหน่งของไฟล์ GIF ใน assets
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
                    height: MediaQuery.of(context).size.width * 0.8,
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
                          'วันเข้าพรรษา :',
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
                        'เป็นวันสำคัญในพุทธศาสนาวันหนึ่งที่พระสงฆ์',
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
                        'เถรวาทจะอธิษฐานว่าจะพักประจำอยู่ ณ ที่ใดที่หนึ่งตลอด',
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
                        'ระยะเวลาฤดูฝนที่มีกำหนดระยะเวลา 3 เดือนตามที่พระ',
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
                        'วินัยบัญญัติไว้ โดยไม่ไปค้างแรมที่อื่น',
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
                        'ตักบาตร ถวายเทียนพรรษา ถวายผ้าอาบน้ำฝน',
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
                        'ถวายจตุปัจจัยไทยธรรม ฟังธรรมเทศนา เวียนเทียนรอบ',
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
                        'พระอุโบสถ รักษาศีล 5 งดเว้นอบายมุข เจริญภาวนา',
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