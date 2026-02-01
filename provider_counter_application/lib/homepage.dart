import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Watch counter value, rebuild when it changes
    final counter = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(title: Text('Counter App with Provider')),
      body: Center(
        child: Text(
          counter.count.toString(),
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "increment",
            onPressed: () {
              context.read<CounterProvider>().increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "decrement",
            onPressed: () {
              context.read<CounterProvider>().decrement();
              if (counter.count <= 0) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Counter cannot go below zero!')),
                );
              }
            },

            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
