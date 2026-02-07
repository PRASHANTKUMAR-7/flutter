import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qr Code Scanner and Generator',
      debugShowCheckedModeBanner: false, //to stop showing debug banner/watermark while developing app.
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QR Code Scanner and Generator'),backgroundColor: Colors.blue,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed:(){
              setState(() {
                
              });
            }, child: Text('Scan Qr Code')),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              setState(() {
                
              });
            }, child: Text('Generate QR Code'))
          ],
        ),
      ),
    );
  }
}
