import 'package:flutter/material.dart';
import 'package:tsster/screen.dart';

//import 'ui/home/screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Web View',
      theme: ThemeData.light(),
      home: PhpContactForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}