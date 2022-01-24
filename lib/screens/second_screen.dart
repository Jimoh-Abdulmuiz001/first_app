import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class Secondscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  String getvalue = "";
  TextEditingController inputcontroller =  TextEditingController();
  final qrKey = GlobalKey(debugLabel: "QR");
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("QR code generator"),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      getvalue = inputcontroller.text;
                    });
                  },
                  child: Text("Get reversed value")),
              Text(getvalue.split("").reversed.join()),
              QrImage(
                  data: controller.text,
                  size: 200,
                  backgroundColor: Colors.white),
              SizedBox(height: 40),
              buildTextField(context),
            ],
          ),
        ),
      );
  Widget buildTextField(BuildContext context) => TextField(
        controller: inputcontroller,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        decoration: InputDecoration(
            hintText: "Enter the Data",
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            suffixIcon: IconButton(
              color: Theme.of(context).colorScheme.secondary,
              icon: Icon(Icons.done, size: 30),
              onPressed: () => setState(() {}),
            )),
      );
}
