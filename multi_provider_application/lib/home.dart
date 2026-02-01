import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(title: Text('MultiProvider – Theme Only')),
      body: Center(
        child: Switch(
          value: theme.isDark,
          onChanged: (_) {
            context.read<ThemeProvider>().toggleTheme();
          },
        ),
      ),
    );
  }
}
