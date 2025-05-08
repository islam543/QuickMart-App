import 'package:floor/floor.dart';
import 'package:quickmart/ProductDao/productDao.dart';
import 'package:quickmart/entities/cartItem.dart';
import 'package:quickmart/entities/favoriteitem.dart';
import 'package:quickmart/entities/product.dart';

@Database(version: 1, entities: [Product, CartItem, FavoriteItem])
abstract class AppDatabase extends FloorDatabase {
  ProductDao get productDao;
  CartDao get cartDao;
  FavoriteDao get favoriteDao;
}
