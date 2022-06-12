import 'package:flutter/material.dart';

listTileWidget(
    {title,
    subtitle,
    trailing,
    tileColor = Colors.amberAccent,
    leading,
    height = 2.0}) {
  return Container(
    margin: EdgeInsets.only(top: height),
    child: ListTile(
      tileColor: tileColor,
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
    ),
  );
}
