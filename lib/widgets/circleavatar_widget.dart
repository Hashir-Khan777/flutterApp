import 'package:flutter/material.dart';

circleAvatarWidget({color = Colors.red, radius = 20.0, image}) {
  return CircleAvatar(
    backgroundColor: color,
    radius: radius,
    backgroundImage: image,
  );
}
