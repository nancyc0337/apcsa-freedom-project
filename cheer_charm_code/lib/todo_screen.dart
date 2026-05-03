import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<String> tasks = [];
  final List<String> taskSubtitles = [];
  final TextEditingController controller = TextEditingController();
  final TextEditingController subtitleController = TextEditingController();

  void addTask() {
    if (controller.text.trim().isEmpty) return;

    setState(() {
      tasks.add(controller.text.trim());
      taskSubtitles.add(subtitleController.text.trim());
    });

    controller.clear();
    subtitleController.clear();
  }

  void removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text("To-Do List 📝", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input box + Add button
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(tasks[index]),
                      subtitle: Text(taskSubtitles[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => removeTask(index),
                      ),
                    ),
                  );
                },
              ),
            ),

            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "Enter a task...",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(width: 10),

            TextField(
              controller: subtitleController,
              decoration: const InputDecoration(
                hintText: "Enter a subtask...",
                border: OutlineInputBorder(),
              ),
            ),
            
            const SizedBox(width: 10),

            ElevatedButton(
              onPressed: addTask,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              child: const Text("Add",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),

            const SizedBox(height: 20),
            // Task list
          ],
        ),
      ),
    );
  }
}