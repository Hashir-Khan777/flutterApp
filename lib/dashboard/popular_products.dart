import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/contaner_widget.dart';
import 'package:flutterapp/widgets/text_widget.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return containerWidget(textWidget('data 3'), color: Colors.blue);
  }
}
