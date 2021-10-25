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
  String nm = "Click!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$nm',
              style: const TextStyle(fontSize: 30, height: 1.5),
            ),
            TextButton(
              child: const Text(
                'TextButton',
                style: TextStyle(fontSize: 30, height: 1.5),
              ),
              onPressed: () {
                setState(() {
                  nm = "TextButton눌렀당!";
                });
              },
            ),
            TextButton.icon(
              icon: const Icon(
                Icons.gavel,
                size: 24,
              ),
              label: const Text(
                "TextButton+Icon",
                style: TextStyle(fontSize: 24, color: Colors.red),
              ),
              onPressed: () {
                setState(() {
                  nm = "icon눌렀당!";
                });
              },
            ),
            TextButton(
                child: const Text("TextButton"),
                style: TextButton.styleFrom(
                  primary: Colors.brown,
                  backgroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                  shadowColor: Colors.orange,
                  elevation: 5,
                  side: const BorderSide(color: Colors.yellow, width: 1),
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                onPressed: () {
                  setState(() {
                    nm = "back-color";
                  });
                }),
            OutlinedButton(
                child: const Text('OutlinedButton',
                    style: TextStyle(fontSize: 24, color: Colors.teal)),
                onPressed: () {
                  _onClick1(1);
                }),
            OutlinedButton.icon(
              icon: Icon(
                Icons.wb_iridescent_outlined,
                size: 24,
              ),
              label: const Text(
                'OutlinedButton.icon',
                style: TextStyle(fontSize: 24, color: Colors.green),
              ),
              onPressed: () {
                _onClick1(2);
              },
            ),
            OutlinedButton(
              child: const Text("OutlinedButton"),
              style: OutlinedButton.styleFrom(
                primary: Colors.deepPurpleAccent,
                backgroundColor: Colors.yellowAccent,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                shadowColor: Colors.amber,
                elevation: 5,
                side: const BorderSide(color: Colors.red, width: 1),
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              onPressed: () {
                _onClick1(3);
              },
            ),
            ElevatedButton(
              child: const Text("ElevatedButton",style: TextStyle(fontSize: 24,color: Colors.white),),
              onPressed: () => _onClick1(4),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.ac_unit,size: 24.0,),
              label: const Text("ElevatedButton.icon",style: TextStyle(fontSize: 24,color: Colors.blue),),
              onPressed: () => _onClick1(5),
            ),
            ElevatedButton(
              child: const Text("ElevatedButton"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
                textStyle: const TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
                shadowColor: Colors.pink,
                elevation: 5,
                side: const BorderSide(color: Colors.brown,width: 1),
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              onPressed: () => _onClick1(6),
            ),
            Row(
              children: [
                  IconButton(
                  icon: const Icon(Icons.breakfast_dining),
                  iconSize: 60.0,
                  color: Colors.brown,
                  tooltip: "tooltip!!",
                  onPressed: () => _onClick2
                ), 
                IconButton(
                  icon: const Icon(Icons.grade_sharp),
                  iconSize: 100.0,
                  color: Colors.yellow,
                  tooltip: "tooltip!!",
                  onPressed: () => _onClick2()
                ), 
              ],
            ),
          ],
        ),

      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _onClick3(),
          tooltip: "앱에서는 롱 터치에 툴팁을 보여줌",
          child: const Icon(Icons.umbrella_outlined),
        )
    );
  }

  void _onClick1(int kind) {
    setState(() {
      switch (kind) {
        case 1:
          nm = "OutlinedButton";
          break;
        case 2:
          nm = "OutlinedButton.icon";
          break;
        case 3:
          nm = "OutlinedButton3";
          break;
        case 4:
          nm = "ElevatedButton";
          break;
        case 5:
          nm = "눈송이";
          break;
        case 6:
          nm = "ElevatedButton";
          break;
        default:
          nm = "홍1";
      }
    });
  }

  void _onClick2() {}
  void _onClick3() {}
}
