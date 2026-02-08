import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  TextEditingController urlController = TextEditingController();

  @override
  void dispose() {
    urlController.dispose();   // ✅ Good practice
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR Code'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              /// 🔹 Input field
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: "Enter URL or Text",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {});   // ✅ rebuild UI
                  },
                ),
              ),

              SizedBox(height: 20),

              /// 🔹 QR Code
              if (urlController.text.isNotEmpty)
                QrImageView(
                  data: urlController.text,
                  size: 200,
                ),

              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left:10, right:10),
                child:TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Data'
                  ),
                ),
              ),
              SizedBox(height:10,),
              ElevatedButton(onPressed:(){}, child:Text('Generate QR Code')),
            ],
          ),
      ),
    );
  }
}
