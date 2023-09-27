import 'package:flutter/material.dart';

// Define a todo class
class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

// Create a list of todos
final todos = List.generate(
    20,
    (index) => Todo("Todo $index",
        "A description of what needs to be done for Todo $index"));

// Display the list of todos using a ListView
class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key, required this.todo});

  final List<Todo> todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo"),
      ),
      body: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todo[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    todo: todos[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.description),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(todo.description),
      ),
    );
  }
}
