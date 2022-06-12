import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  List<dynamic> list = [];
  dynamic output = "";

  addToDo() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Item'),
          content: TextField(
            onChanged: (value) => output = value,
            decoration: const InputDecoration(hintText: 'Add item'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                if (output != "") {
                  setState(() {
                    list.add(output);
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Add'),
            )
          ],
          elevation: 10,
        );
      },
    );
  }

  deleteTodo(index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete item'),
          content: Text('Are you sure you want to delete ${list[index]}?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  list.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: const Text('Delete'),
            )
          ],
          elevation: 10,
        );
      },
    );
  }

  updateTodo(index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Update Item'),
          content: TextFormField(
            autofocus: true,
            initialValue: list[index],
            onChanged: (value) => output = value,
            decoration: const InputDecoration(hintText: 'Update item'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                if (output != "") {
                  setState(() {
                    list[index] = output;
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Update'),
            ),
          ],
          elevation: 10,
        );
      },
    );
  }

  deleteAllTodos() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete all'),
          content: const Text('Are you sure you want to delete all?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  list.clear();
                });
                Navigator.of(context).pop();
              },
              child: const Text('Delete all'),
            ),
          ],
          elevation: 10,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        actions: [
          if (list.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: deleteAllTodos,
                child: const Icon(Icons.delete),
              ),
            ),
        ],
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber,
            margin: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: ListTile(
              title: Text("${list[index]}"),
              trailing: SizedBox(
                width: 70,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        updateTodo(index);
                      },
                      child: const Icon(Icons.edit),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        deleteTodo(index);
                      },
                      child: const Icon(Icons.delete),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addToDo,
        child: const Icon(Icons.add),
      ),
    );
  }
}
