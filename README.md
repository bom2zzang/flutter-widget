# flutter-widget

- 프로젝트 생성
  - `flutter create --org com.study [프로젝트명]` - 기본으로 --org에 com.example가 들어가는데 그러면 ios실행이 안됨
- 기본 구조

  ```
      // main.dart (주석제거)
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
              children: <Widget>[
                  const Text(
                  'You have pushed the button this many times:',
                  ),

              ],
              ),
          ),
          );
      }
      }
  ```
