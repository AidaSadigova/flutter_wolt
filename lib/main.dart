import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom.dart';
import 'stories.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50.0,
          backgroundColor: Colors.grey[800],
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 94, 159, 243).withOpacity(0.2),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.mapLocation),
              iconSize: 20.0,
            ),
          ),
          title: const Text(
            'Choose current location',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 15.0,
            ),
          ),
        ),
        body: const Stroies(),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}
