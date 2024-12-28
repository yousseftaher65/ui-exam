import 'package:exam_pojo/ui/screens/screen_one.dart';
import 'package:exam_pojo/ui/screens/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ScreenOne.tag,
      routes: {
        ScreenOne.tag: (context) =>  ScreenOne(),
        ScreenTwo.tag: (context) => const ScreenTwo(),
      },
    );
  }
}
