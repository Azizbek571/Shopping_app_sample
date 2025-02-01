import 'package:get/get.dart';
import '../models/product_model.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() {
    // Simulate fetching products from an API
    var productList = [
      Product(id: 1, name: 'Product 1', price: 10.99, imageUrl: 'https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg'),
      Product(id: 2, name: 'Product 2', price: 20.99, imageUrl: 'https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg'),
      Product(id: 3, name: 'Product 3', price: 30.99, imageUrl: 'https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg'),
    ];
    products.assignAll(productList);
  }
}