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
        padding: EdgeInsets.fromLTRB(18, 40, 0, 0),
        child: Column(
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
            Container(
              color: Colors.grey,
              child: Column(
                children: [
                  Card(
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
                                width: 150,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
