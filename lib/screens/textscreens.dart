import 'package:first_app/screens/palettte.dart';
import 'package:flutter/material.dart';

class LoginDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginDetailsState();
}

class _LoginDetailsState extends State<LoginDetails> {
  TextEditingController inputcontroller = TextEditingController();
  TextEditingController inputcontrollers = TextEditingController();
  String password = "";
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Login Details"),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Container(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/pexels-photo-1034662.jpeg"),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black45, BlendMode.darken))),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                AspectRatio(
                  aspectRatio: 21 / 9,
                  child: Container(
                    height: 40,
                    child: Center(
                        child: Text(
                      "Twitter",
                      style: kHeading,
                    )),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16)),
                  child: TextField(
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                    controller: inputcontroller,
                    decoration: InputDecoration(
                      hintText: "name@gmail.com",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.grey),
                      icon: const Icon(Icons.mail),
                      border: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16)),
                  child: TextField(
                    controller: inputcontrollers,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.grey),
                      border: const OutlineInputBorder(),
                    ),
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16)),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: kBodyText,
                      ),
                    )),
              ]),
            ),
          ),
        ),
      );
}
