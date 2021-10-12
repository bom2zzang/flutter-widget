import 'package:flutter/material.dart';


/**
  기본 실행 순서 
  main() -> runApp(new MyApp()) -> MyApp() -> build() -> MaterialApp() -> Scaffold()
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  /** 
   *  StatelessWidget 
   *    - const와 같다.
   *    - 변경이 안 된다.
   *    - MaterialApp 스타일은 Scaffold를 이용하여 완성한다.
   * */
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 안드로이드의 Material디자인을 채용한 앱
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
    return Scaffold( // Material디자인을 적용하기 위해 Scaffold로 감싸줘야 한다.
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello World',
            ),

          ],
        ),
      ),
    );
  }
}
