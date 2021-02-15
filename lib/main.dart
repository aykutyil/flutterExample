import 'package:flutter/material.dart';
import 'package:kargomo121a/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(BuildContext context)=>MainScreen(),
      },
      initialRoute: "/",
    );
  }

}