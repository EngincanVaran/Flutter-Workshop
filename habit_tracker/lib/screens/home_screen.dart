import 'package:flutter/material.dart';

import '../models/habit_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<HabitItem> _habitItems = [
    HabitItem(title: 'Drink water', count: 5, icon: Icons.local_drink),
    HabitItem(title: 'Read a book', count: 2, icon: Icons.book),
    HabitItem(title: 'Exercise', count: 3, icon: Icons.fitness_center),
    HabitItem(title: 'Meditate', count: 1, icon: Icons.self_improvement),
    HabitItem(title: 'Walk', count: 2, icon: Icons.directions_walk),
    HabitItem(title: 'Write a journal', count: 1, icon: Icons.edit),
  ];

  final _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habit Tracker'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        itemCount: _habitItems.length,
        itemBuilder: (context, index) {
          final habitItem = _habitItems[index];
          final color = _colors[index % _colors.length];
          return SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: color,
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    habitItem.icon,
                    color: Colors.white,
                  ),
                  title: Text(
                    habitItem.title,
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Count: ${habitItem.count}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the screen to add a new habit item
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
