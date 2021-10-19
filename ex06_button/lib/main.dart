import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                // 버튼 색깔은 기본으로 타이틀바 색상으로 지정된다.
                child: const Text(
                  "Button #1",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  print("Button #1 동작");
                }),
            ElevatedButton(
                // 버튼 색깔은 기본으로 타이틀바 색상으로 지정된다.
                child: const Text(
                  "Button #2",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  _onClick();
                }),
            ElevatedButton(
                // 버튼 색깔은 기본으로 타이틀바 색상으로 지정된다.
                child: const Text(
                  "Button #3",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () => _onClick()),
            ElevatedButton(
                // 버튼 색깔은 기본으로 타이틀바 색상으로 지정된다.
                child: const Text(
                  "Button #4",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: _onClick),
          ],
        ),
      ),
    );
  }

  void _onClick() {
    print("button click!");
  }
}
