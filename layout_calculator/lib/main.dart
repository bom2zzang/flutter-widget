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
      home: const MyHomePage(title: 'LAYOUT EXAM'),
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
  late int result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.all(10),
                      // padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: const Text(
                        " 111",
                        style: TextStyle(fontSize: 60, color: Colors.white),
                      )),
                ),
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(4, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "AC",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "+/-",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "%",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 4, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "/",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(4, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "7",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {
                          _onClick(7);
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "8",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "9",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 4, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "*",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(4, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "4",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "5",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "6",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 4, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "-",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(4, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "1",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "2",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "3",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 4, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "+",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2, //default
                  child: AspectRatio(
                    aspectRatio: 2 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(4, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "0",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          ".",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //default
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 4, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        child: const Text(
                          "=",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onClick(num) {
    //any?
    print(num);
  }
}
