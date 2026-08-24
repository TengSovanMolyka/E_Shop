import 'package:flutter/foundation.dart';
import '../models/product.dart';
import '../models/user.dart';

class AppState extends ChangeNotifier {
  static final AppState instance = AppState._internal();

  AppState._internal();

  // ================= USER / AUTHENTICATION =================

  User? _currentUser;

  User? get currentUser => _currentUser;

  bool get isLoggedIn => _currentUser != null;

  void login(User user) {
    _currentUser = user;
    notifyListeners();
  }

  void logout() {
    _currentUser = null;
    notifyListeners();
  }

  // ================= FAVORITES =================

  final List<Product> _favorites = [];

  List<Product> get favorites => List.unmodifiable(_favorites);

  bool isFavorite(Product product) => _favorites.contains(product);

  void toggleFavorite(Product product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
      product.favorite = false;
    } else {
      _favorites.add(product);
      product.favorite = true;
    }
    notifyListeners();
  }

  // ================= CART =================

  final Map<Product, int> _cart = {};

  Map<Product, int> get cart => Map.unmodifiable(_cart);

  bool isInCart(Product product) => _cart.containsKey(product);

  int getQuantity(Product product) => _cart[product] ?? 0;

  void addToCart(Product product) {
    _cart[product] = (_cart[product] ?? 0) + 1;
    notifyListeners();
  }

  void increaseQuantity(Product product) {
    if (_cart.containsKey(product)) {
      _cart[product] = _cart[product]! + 1;
      notifyListeners();
    }
  }

  void decreaseQuantity(Product product) {
    if (!_cart.containsKey(product)) return;

    final currentQuantity = _cart[product]!;
    if (currentQuantity > 1) {
      _cart[product] = currentQuantity - 1;
    } else {
      _cart.remove(product);
    }
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  double get cartTotal {
    double total = 0;
    _cart.forEach((product, quantity) {
      total += product.price * quantity;
    });
    return total;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
}
