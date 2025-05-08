import 'package:quickmart/database.dart';
import 'package:quickmart/entities/favoriteitem.dart';
import 'package:quickmart/entities/product.dart';
import 'package:quickmart/entities/cartItem.dart';

class QuickMartRepository {
  final AppDatabase _appDatabase;

  QuickMartRepository(this._appDatabase);

  // Product Methods
  Future<void> addProduct(Product product) async {
    await _appDatabase.productDao.insertProduct(product);
  }

  Future<void> updateProduct(Product product) async {
    await _appDatabase.productDao.updateProduct(product);
  }

  Future<void> deleteProduct(Product product) async {
    await _appDatabase.productDao.deleteProduct(product);
  }

  Future<List<Product>> getProductsByCategory(String category) async {
    return await _appDatabase.productDao.findProductsByCategory(category);
  }

  Future<Product?> getProductById(int id) async {
    return await _appDatabase.productDao.findProductById(id);
  }

  // Cart Methods
  Future<void> addToCart(CartItem cartItem) async {
    await _appDatabase.cartDao.insertCartItem(cartItem);
  }

  Future<void> removeFromCart(CartItem cartItem) async {
    await _appDatabase.cartDao.deleteCartItem(cartItem);
  }

  // Favorite Methods
  Future<void> addToFavorites(FavoriteItem favoriteItem) async {
    await _appDatabase.favoriteDao.insertFavoriteItem(favoriteItem);
  }

  Future<void> removeFromFavorites(FavoriteItem favoriteItem) async {
    await _appDatabase.favoriteDao.deleteFavoriteItem(favoriteItem);
  }
}
