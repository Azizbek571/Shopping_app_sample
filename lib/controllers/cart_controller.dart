import 'package:get/get.dart';
import '../models/product_model.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  void addToCart(Product product) {
    cartItems.add(product);
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
  }
}