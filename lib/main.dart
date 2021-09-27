import 'package:flutter/material.dart';

// import 'package:learning/constants/Constants.dart';
import 'package:learning/page/counting_demo.dart';
import 'package:learning/page/provider_exam1.dart';

// import 'package:learning/page/first_screen.dart';
// import 'package:learning/GridViewPage.dart';
// import 'package:learning/HomePage.dart';
// import 'package:learning/WelcomePage.dart';
// import 'package:learning/network_handler.dart';
// import 'package:learning/page/bottom_navigation.dart';
// import 'package:learning/page/expanded_example.dart';
// import 'package:learning/page/list_view_learning.dart';
// import 'package:learning/page/logIn_page.dart';
// import 'package:learning/page/provider_exam1.dart';
import 'package:learning/provider/counting_provider.dart';
import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  //  runApp(
  //     MaterialApp(
  //       debugShowCheckedModeBanner: true,
  //       title: "Learning Flutter",
  //       home: ProviderExample1(),
  //       theme: ThemeData(
  //         // primaryColor: Colors.yellow,
  //         primarySwatch: Colors.deepOrange
  //       ),
  //       routes: {
  //         "/home":(context)=>HomePage(),
  //         "/login":(context)=>LogInPage()
  //       },
  //   )
  // );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<CountingProvider>(
        create: (context) => CountingProvider(),
      ),
      ChangeNotifierProvider<ProgramListProvider>(
        create: (context) => ProgramListProvider(),
      )
    ],
    child: MyApp(),
  ));

}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learning app",
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: CountingDemo(),
    );
  }
}


// await Future.delayed(Duration(milliseconds: 1000));
