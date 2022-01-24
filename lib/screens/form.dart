import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController  value = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Form(
        key: formKey,
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/image2.jpeg"),
              fit: BoxFit.cover,
            )),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/image1.jpeg"),
                radius: 70,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Welcome"),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter your name",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value==null ||
                        RegExp(r'^[a-z A-Z] +$').hasMatch(value)) {
                      return "Enter correct name";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter your number",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value==null ||
                        RegExp(r'^[+]*[(]{0,1}[0,9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                            .hasMatch(value)) {
                      return "Enter correct number";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter your email",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value==null ||
                        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                            .hasMatch(value)) {
                      return "Enter correct email";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(16)),
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) ;
                      },
                      child: Text("Submit"),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
