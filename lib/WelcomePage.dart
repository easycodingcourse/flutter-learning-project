import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learning/myDrawer.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController _textEditingController = TextEditingController();

  var myText = "Changeable text";

  // its call before screen rendar
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Welcome Page"),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(50),
              elevation: 8.5,
              child: Image.asset(
                "assets/image2.png",
                fit: BoxFit.cover,
                width: 300,
                height: 100,
              ),
            ),
            SizedBox(height: 10),
            Text(
              myText,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: _textEditingController,
                  textAlign: TextAlign.left,
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // hintText: "Enter your name",
                      labelText: "Enter your Name"),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myText = _textEditingController.text;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
