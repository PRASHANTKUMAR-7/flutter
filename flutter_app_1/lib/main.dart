import 'package:flutter/material.dart';

void main() {
  runApp(const NewApp());
}


class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 136, 77, 219),
          centerTitle: true,
          title: Text("IntelliWear"),
          actions: [
            Icon(Icons.home),
            Icon(Icons.access_alarms_rounded),
            Icon(Icons.account_balance_outlined),

          ],
          leading: CircleAvatar(child: Text("IW"),),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text("Prashant Kumar", style: TextStyle(fontSize: 20),)
          ),
        )
      )
    );
  }
}

