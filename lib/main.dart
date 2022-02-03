import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
      backgroundColor: Colors.blue,
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "2022-01 Balance",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      "-689",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Expense: ",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "-689",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Income: ",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              margin: EdgeInsets.zero,
              elevation: 15,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 14, 8, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Budget:",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "1,220",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    /*LinearProgressIndicator(
                      color: Colors.blue,
                      minHeight: 8,
                    ),*/
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 180,
                        ),
                        Text(
                          "Remaining Budget:",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "531",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w900),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 417,
              color: Colors.grey,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text("Feb 03, 2022"),
                        SizedBox(
                          width: 165,
                        ),
                        Text("Expense:"),
                        Text("-689"),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 10),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Icon(
                          Icons.watch,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Fruits",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        SizedBox(
                          width: 210,
                        ),
                        Text(
                          "-500",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text(""),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text(""),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            title: Text(""),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text(""),
            backgroundColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
