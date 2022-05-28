import 'package:flutter/material.dart';

textWidget(String text, {fontSize = 18.0, color = Colors.black}) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize, color: color),
  );
}
