import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/text_widget.dart';

containerWidget(Widget widget,
    {width = 200.0, height = 200.0, color = Colors.white}) {
  return Container(
    width: width,
    height: height,
    color: color,
    child: widget,
  );
}
