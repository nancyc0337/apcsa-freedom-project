import 'package:flutter/material.dart';
import 'advice_screen.dart';
import 'todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7FF),

      body: Row(
        children: [
          // Permanent Sidebar
          Container(
            width: 200,
            color: Colors.pink.shade50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  color: Colors.pink.shade100,
                  child: const Text(
                    "CheerCharm Menu ⚙️",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Advice Generator Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AdviceScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "🗣️ Advice Generator",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // To‑Do List Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TodoScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "📝 To-Do List",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Main Content
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "CheerCharm",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink.shade400,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      "A place for helpful advices & organization",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 70, 69, 69),
                      ),
                    ),  

                    const SizedBox(height: 12),

                    const Text(
                      "Click 🗣️ Advice Generator to generate an advice for the day!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 70, 69, 69),
                      ),
                    ),  

                    const SizedBox(height: 12),

                    const Text(
                      "Click 📝 To-Do List to organize your tasks!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 70, 69, 69),
                      ),
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
