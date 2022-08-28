import 'dart:convert';
import 'package:flutterapp/apiCalling/user_model.dart';
import 'package:http/http.dart' as http;

getUsers() async {
  var userList = [];
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  var response = await http.get(url);
  var data = jsonDecode(response.body);
  for (var i in data) {
    userList.add(UserModel.fromJson(i));
  }
  return userList;
}
