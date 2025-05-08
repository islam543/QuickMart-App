import 'package:floor/floor.dart';
import 'package:quickmart/entities/cartItem.dart';
import 'package:quickmart/entities/favoriteitem.dart';
import 'package:quickmart/entities/product.dart';

@dao
abstract class ProductDao {
  @insert
  Future<void> insertProduct(Product product);

  @update
  Future<void> updateProduct(Product product);

  @delete
  Future<void> deleteProduct(Product product);

  @Query('SELECT * FROM products WHERE category = :category')
  Future<List<Product>> findProductsByCategory(String category);

  @Query('SELECT * FROM products WHERE id = :id')
  Future<Product?> findProductById(int id);
}

@dao
abstract class CartDao {
  @insert
  Future<void> insertCartItem(CartItem cartItem);

  @update
  Future<void> updateCartItem(CartItem cartItem);

  @delete
  Future<void> deleteCartItem(CartItem cartItem);

  @Query('SELECT * FROM cart_items WHERE productId = :productId')
  Future<CartItem?> findCartItemByProductId(int productId);
}

@dao
abstract class FavoriteDao {
  @insert
  Future<void> insertFavoriteItem(FavoriteItem favoriteItem);

  @delete
  Future<void> deleteFavoriteItem(FavoriteItem favoriteItem);

  @Query('SELECT * FROM favorites WHERE productId = :productId')
  Future<FavoriteItem?> findFavoriteItemByProductId(int productId);
}
