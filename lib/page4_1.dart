// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, library_private_types_in_public_api, camel_case_types, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

// ignore: camel_case_types
class Page4_1Screen extends StatefulWidget {
  const Page4_1Screen({Key? key}) : super(key: key);

  @override
  _Page4_1ScreenState createState() => _Page4_1ScreenState();
}

class _Page4_1ScreenState extends State<Page4_1Screen> {
  int daysRemaining = 0;
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;

  void calculateDaysRemaining() {
    DateTime targetDate = DateTime(2024, 4, 1); // ตั้งค่าวันที่ที่คุณต้องการนับถอยหลัง
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
      await audioPlayer.open(Audio('assets/music/4_1.mp3'));
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
          title: const Text('วันที่ 1'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(224, 157, 157, 157),
                Color.fromARGB(255, 81, 88, 96)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          )),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/g7.gif'), // ระบุตำแหน่งของไฟล์ GIF ใน assets
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
                            'วันโกหก :',
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
                          'เป็นวันที่คนแกล้งหลอกกันด้วยการแต่งเรื่อง',
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
                          'อะไรก็ได้มาหลอกให้คนอื่นหลงเชื่อ จากนั้นค่อย',
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
                          'เฉลยในตอนท้าย เรื่องที่โกหกต้องอยู่บนพื้นฐานที่ว่า',
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
                          'ไม่ทำอันตรายให้คนอื่น ไม่ทำให้คนอื่นเดือดร้อน',
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
                          'ไม่เกี่ยวกับความเป็นความตาย',
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
                          'ผู้คนจะเล่นมุกตลกและเรื่องหลอกลวงต่อกัน',
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
                          'ตามสำนักพิมพ์หรือสื่อต่าง ๆ อาจรายงานเรื่อง',
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
                          'หลอกลวงในวันนี้ และออกมาเฉลยในวันต่อมา',
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
