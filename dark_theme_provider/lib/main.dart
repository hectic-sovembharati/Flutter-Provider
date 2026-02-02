import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';
import 'themeprovoder.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Themeprovoder())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<Themeprovoder>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.isDark ? ThemeData.dark() : ThemeData.light(),
      home: const Homepage(),
    );
  }
}
