import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themeprovoder.dart';
import 'main.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<Themeprovoder>();

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        children: [
          ListTile(
            title: const Text('Light Mode'),
            leading: Radio<int>(
              value: 1,
              groupValue: themeProvider.selectedTheme,
              onChanged: (value) {
                context.read<Themeprovoder>().setTheme(value!);
              },
            ),
            onTap: () {
              context.read<Themeprovoder>().setTheme(1);
            },
          ),

          ListTile(
            title: const Text('Dark Mode'),
            leading: Radio<int>(
              value: 2,
              groupValue: themeProvider.selectedTheme,
              onChanged: (value) {
                context.read<Themeprovoder>().setTheme(value!);
              },
            ),
            onTap: () {
              context.read<Themeprovoder>().setTheme(2);
            },
          ),
        ],
      ),
    );
  }
}
