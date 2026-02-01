import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<int> _favoriteItems = [];

  List<int> get favoriteItems => _favoriteItems;

  bool isFavorite(int index) {
    return _favoriteItems.contains(index);
  }

  void toggleFavorite(int index) {
    if (isFavorite(index)) {
      _favoriteItems.remove(index);
    } else {
      _favoriteItems.add(index);
    }
    notifyListeners();
  }
}
