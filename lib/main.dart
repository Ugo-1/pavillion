import 'package:flutter/material.dart';
import 'package:pavillion/screens/nav.dart';

void main() {
  runApp(const PavillionApp());
}

class PavillionApp extends StatelessWidget {
  const PavillionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavControl(),
    );
  }
}

