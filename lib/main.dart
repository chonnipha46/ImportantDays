// ignore_for_file: duplicate_import, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:test_navi/profile.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';
import 'page6.dart';
import 'page7.dart';
import 'page8.dart';
import 'page9.dart';
import 'page10.dart';
import 'page11.dart';
import 'page12.dart';
import 'profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'วันหยุดเทศกาล',
      theme: ThemeData(
        fontFamily: 'Kanit',
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'วันสำคัญในปี 2567'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, Color?> buttonColors = {
    'JANUARY': const Color.fromARGB(255, 117, 48, 43),
    'FEBRUARY': Colors.purple,
    'MARCH': Color.fromARGB(255, 23, 152, 216),
    'APRIL': Colors.blueGrey,
    'MAY': Colors.green,
    'JUNE': Colors.grey,
    'JULY': Colors.pinkAccent,
    'AUGUST': Colors.lightGreenAccent,
    'SEPTEMBER': Colors.blueAccent,
    'OCTOBER': Color.fromARGB(255, 56, 213, 233),
    'NOVEMBER': Colors.deepOrangeAccent,
    'DECEMBER': Colors.cyan,
  };

  // Store the original button colors
  Map<String, Color?> buttonOriginalColors = {
    'JANUARY': const Color.fromARGB(255, 78, 19, 19),
    'FEBRUARY': Colors.purple,
    'MARCH': Color.fromARGB(255, 23, 152, 216),
    'APRIL': Colors.blueGrey,
    'MAY': Colors.green,
    'JUNE': Colors.grey,
    'JULY': Colors.pinkAccent,
    'AUGUST': Colors.lightGreenAccent,
    'SEPTEMBER': Colors.blueAccent,
    'OCTOBER': Color.fromARGB(255, 56, 213, 233),
    'NOVEMBER': Colors.deepOrangeAccent,
    'DECEMBER': Colors.cyan,
  };

  // Store the original button font colors
  Map<String, Color?> buttonFontColors = {
    'JANUARY': Colors.white,
    'FEBRUARY': Colors.white,
    'MARCH': Colors.white,
    'APRIL': Colors.white,
    'MAY': Colors.white,
    'JUNE': Colors.white,
    'JULY': Colors.white,
    'AUGUST': Colors.white,
    'SEPTEMBER': Colors.white,
    'OCTOBER': Colors.white,
    'NOVEMBER': Colors.white,
    'DECEMBER': Colors.white,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              ).then((selectedDate) {
                if (selectedDate != null) {
                  final snackBar = SnackBar(
                    content: Text("Selected date: $selectedDate"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              });
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => profileScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.account_box_rounded,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 184, 10, 114),
                Color.fromARGB(255, 118, 9, 154),
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
            image: AssetImage('assets/images/g23.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('JANUARY', Page1Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('FEBRUARY', const Page2Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('MARCH', const Page3Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('APRIL', const Page4Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('MAY', const Page5Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('JUNE', const Page6Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('JULY', const Page7Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('AUGUST', const Page8Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('SEPTEMBER', const Page9Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('OCTOBER', const Page10Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('NOVEMBER', const Page11Screen()),
            const SizedBox(
              height: 25,
            ),
            buildMonthButton('DECEMBER', const Page12Screen()),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMonthButton(String text, Widget route) {
    return InkWell(
      onTap: () {
        // Store the original colors before changing them
        Color? originalButtonColor = buttonColors[text];
        Color? originalFontColor = buttonFontColors[text];

        // Update the color for the tapped month
        setState(() {
          buttonColors[text] = Colors.red;
          buttonFontColors[text] = Colors.white;
        });

        // Delay navigation by 300 milliseconds for a button press effect
        Future.delayed(Duration(milliseconds: 300), () {
          // Navigate to the route
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          ).then((_) {
            // Restore the original colors after navigation
            setState(() {
              buttonColors[text] = originalButtonColor;
              buttonFontColors[text] = originalFontColor;
            });
          });
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: buttonColors[text],
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: buttonFontColors[text],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
