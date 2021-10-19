import 'package:flutter/material.dart';
import 'dart:ui'; // 화면 사이즈 구하기

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  void getWindowSize() {
    print(MediaQuery.of(context).size); // 앱 화면 논리적 크기
    print(MediaQuery.of(context).devicePixelRatio); // 화면 배율
    print(window.physicalSize); // 앱화면 실제크기
  }

  @override
  Widget build(BuildContext context) {
    getWindowSize();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Image.asset(
        'assets/images/Peaceful-Marsh-2-900x900.jpeg',
        fit: BoxFit.fill, // 사이즈만 지정하면 자동 설정 됨
        alignment: Alignment.center,
        // width: 200.0, // 원래 사이즈가 비율대로 줄어 든다
        
      ),
    );
  }
}
