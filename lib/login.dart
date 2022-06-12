import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 25),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Icon(Icons.add),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (count > 0) {
                    count--;
                  }
                });
              },
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
