import 'dart:math';
import 'package:test/test.dart';
import 'package:unit_testing_ap/favorites.dart';
import 'package:unit_testing_ap/favorites_models.dart';

void main() {
  group('Testing favorites provider.', () {
    var favorites = Favorites();

    test('A new item should be added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test('An item should be deleted.', () {
      var number = 35;
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
