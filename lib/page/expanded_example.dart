import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learning/HomePage.dart';
import 'package:learning/WelcomePage.dart';
import 'package:learning/network_handler.dart';
import 'package:learning/page/first_screen.dart';

class ExpandedExample extends StatefulWidget {
  const ExpandedExample({Key? key}) : super(key: key);

  @override
  State<ExpandedExample> createState() => _ExpandedExampleState();
}

class _ExpandedExampleState extends State<ExpandedExample> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Expanded like flex")),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.red[200],
                    child: const Text("container 1"),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green[200],
                    child: const Text("container 1"),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.yellow[200],
                    child: const Text("container 1"),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  child: InkWell(
                    highlightColor: Colors.yellow,
                    focusColor: Colors.yellow,
                    hoverColor: Colors.yellow,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Tap'),
                      ));
                    },
                    child: Ink(
                      child: GestureDetector(
                        onTap: () {
                          // ScaffoldMessenger.of(context)
                          //     .showSnackBar(SnackBar(content: Text("SnackBar")));

                          Fluttertoast.showToast(
                              msg: "This is Center Short Toast",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              fontSize: 16.0
                          );
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.red[300],
                          child: const Text("container 1"),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green[300],
                  child: const Text("container 1"),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    // color: Colors.yellow[300],
                    shape: BoxShape.circle,
                  ),
                  // decoration: BoxDecoration(shape: BoxShape.circle),
                  height: 100,
                  width: 100,

                  child: const Text("container 1"),
                )
              ],
            )
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,

      ),

    );
  }
}
