import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekber_assignment3/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}