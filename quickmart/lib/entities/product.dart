import 'package:floor/floor.dart';

@Entity(tableName: 'products')
class Product {
  @primaryKey
  final int id;
  final String title;
  final String category;
  final String imageUrl;
  final double price;
  final double rating;

  Product({
    required this.id,
    required this.title,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });
}
