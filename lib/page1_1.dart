// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, library_private_types_in_public_api, camel_case_types, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Page1_1Screen extends StatefulWidget {
  const Page1_1Screen({Key? key}) : super(key: key);

  @override
  _Page1_1ScreenState createState() => _Page1_1ScreenState();
}

class _Page1_1ScreenState extends State<Page1_1Screen> {
  int daysRemaining = 0;
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;

  void calculateDaysRemaining() {
    DateTime targetDate = DateTime(2024, 1, 1);
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
      await audioPlayer.open(Audio('assets/music/1_1.mp3'));
      await audioPlayer.play();
    }

    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('วันที่ 1'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(199, 255, 230, 212),
                Color.fromARGB(197, 255, 155, 83)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/g2.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
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
                            'วันขึ้นปีใหม่ :',
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
                          'เป็นเวลาที่ปฏิทินปีใหม่เริ่มต้นและนับปีปฏิทิน',
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
                          'เพิ่มขึ้นหนึ่งปี วันขึ้นปีใหม่ในปฏิทินกริกอเรียนที่ใช้',
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
                          'กันทั่วโลก ปัจจุบัน ตรงกับวันที่ 1 มกราคม',
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
                          'สวดมนต์ข้ามปี ทำบุญ เข้าวัด ซื้อของขวัญ',
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
                          'ปีใหม่พร้อมส่งมอบให้กับคนสำคัญ หรือทำความ',
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
                          'สะอาดบ้าน จัดบ้านใหม่ให้เป็นระเบียบต้อนรับปีใหม่',
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
                          'ที่ดีกว่าเดิม',
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
