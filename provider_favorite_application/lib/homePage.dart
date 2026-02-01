import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_provider.dart';

class HomePage extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = context.watch<FavoriteProvider>();

    return Scaffold(
      appBar: AppBar(title: Text('Favorite App')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final isFav = favoriteProvider.isFavorite(index);

          return ListTile(
            title: Text(items[index]),
            trailing: IconButton(
              icon: Icon(
                isFav ? Icons.favorite : Icons.favorite_border,
                color: isFav ? Colors.red : null,
              ),
              onPressed: () {
                context.read<FavoriteProvider>().toggleFavorite(index);
              },
            ),
          );
        },
      ),
    );
  }
}
