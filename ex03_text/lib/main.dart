import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  //여기에 변수를 만들면 클래스변수가 만들어진다.
  late String name;

  @override
  Widget build(BuildContext context) {
    name = "손오공";

    //여기에 변수를 만들면 지역변수가 만들어진다.
    var myTextStyle1 = TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      height: 1.5,
      color: Colors.red.withOpacity(0.8),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        //여러개를 배치하고 싶을 때 Column, row 사용한다.
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            '0123456789Aa가#',
            style: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
              letterSpacing: 4.0,
            ),
          ),
          const Text(
            '0123456789Aa가#',
            style: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
            ),
          ),
         SizedBox(
           width: 480,
           child: Text(
              '0123456789Aa가#',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
         ),
           Text('0123456789Aa가#',
              textAlign: TextAlign.left, 
              style: myTextStyle1
              ),
          Text(
            'aaa $name',
          ),
        ],
      ),
    );
  }
}
