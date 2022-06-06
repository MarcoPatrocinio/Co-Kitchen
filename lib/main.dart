import 'package:co_kitchen/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoKitchen());
}

class CoKitchen extends StatelessWidget {
  const CoKitchen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: LoginScreen()
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
