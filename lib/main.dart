import 'package:flutter/material.dart';
import 'package:flutterapp/apiCalling/api_calling.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo App',
      home: ApiCalling(),
    );
  }
}
