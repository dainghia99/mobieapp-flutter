import 'package:bai_tap_lon/features/shop/screens/home/models/product.dart';
import 'package:bai_tap_lon/services/search_service.dart';
import 'package:get/get.dart';

class SearchControllerPage extends GetxController {
  var products = <Product>[].obs; // Danh sách sản phẩm từ API
  var searchResults = <Product>[].obs; // Kết quả tìm kiếm
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchProducts(); // Lấy dữ liệu khi khởi tạo controller
    super.onInit();
  }

  void fetchProducts() async {
    isLoading.value = true;
    // Gọi API để lấy dữ liệu
    // Giả sử bạn đã có hàm fetchProductsFromAPI() để lấy dữ liệu
    var fetchedProducts = await fetchProductsFromAPI();
    products.value = fetchedProducts;
    isLoading.value = false;
  }

  void searchProducts(String query) {
    if (query.isEmpty) {
      searchResults.value = [];
    } else {
      searchResults.value = products.where((p) {
        return p.name.toLowerCase().contains(query.toLowerCase()) ||
            p.price.toString().toLowerCase().contains(query.toLowerCase()) ||
            p.description.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
  }
}
