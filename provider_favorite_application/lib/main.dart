import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_provider.dart';
import 'homePage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Favorite Items', home: HomePage());
  }
}
