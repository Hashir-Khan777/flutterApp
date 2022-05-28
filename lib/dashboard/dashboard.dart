import 'package:flutter/material.dart';
import 'package:flutterapp/dashboard/popular_products.dart';
import 'package:flutterapp/widgets/contaner_widget.dart';
import 'package:flutterapp/widgets/text_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: Column(
          children: [
            containerWidget(textWidget('data 1'),
                color: Colors.red, width: 150.0, height: 150.0),
            containerWidget(
                textWidget('data 2', fontSize: 35.0, color: Colors.redAccent),
                color: Colors.green),
            const PopularProducts()
          ],
        ));
  }
}
