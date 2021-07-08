import 'package:flutter/material.dart';
import 'package:set_state/login.dart';

import 'Reggister.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.amber,
              title: Center(
                  child: Text(
                "Hasan",
                style: TextStyle(fontSize: 28),
              )),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text("Login"),
                  ),
                  Tab(
                    child: Text("Register"),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                login(),
                register(),
              ],
            ),
          ),
        ));
  }
}
