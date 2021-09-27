import 'package:flutter/material.dart';
import 'package:learning/constants/Constants.dart';
import 'package:learning/network_handler.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {



  final userMailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  child: Center(
                    child: Column(
                      children: [
                        Center(
                          child: Card(

                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Form(

                                        child: Column(
                                      children: [
                                        TextFormField(
                                          controller: userMailController,
                                          decoration: InputDecoration(
                                              hintText: "Enter Gmail",
                                              labelText: "Enter Gamil"),
                                        ),
                                        SizedBox(height: 20),
                                        TextFormField(
                                          obscureText: true,
                                          controller: passwordController,
                                          decoration: InputDecoration(
                                              hintText: "Enter Password",
                                              labelText: "Enter Password"),
                                        ),
                                        ElevatedButton(
                                          style: ButtonStyle(),
                                          child: Text("LogIn"),
                                          onPressed: () {

                                            // Constants.sharedPreferences.setBool("login", true);

                                            // Navigator.push(context, MaterialPageRoute(builder: (context) => NetworkHandler()));

                                            Navigator.pushReplacementNamed(context, "/home");
                                            },
                                        )
                                      ],
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
