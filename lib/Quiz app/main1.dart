import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('Namaskar Kolkata 🤖'),
      backgroundColor: Color.fromARGB(255, 223, 158, 29),
    ),
  ));
}
