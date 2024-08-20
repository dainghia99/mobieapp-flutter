import 'package:bai_tap_lon/models/product.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FavoritesController extends GetxController {
  var favoriteProducts = <Product>[].obs;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final User? user = FirebaseAuth.instance.currentUser;

  @override
  void onInit() {
    super.onInit();
    loadFavorites();
  }

  void addToFavorites(Product product) async {
    if (!isFavorite(product)) {
      favoriteProducts.add(product);
      await saveFavoritesToFirebase();
    }
  }

  void removeFromFavorites(Product product) async {
    favoriteProducts.remove(product);
    await saveFavoritesToFirebase();
  }

  bool isFavorite(Product product) {
    return favoriteProducts.any((p) => p.id == product.id);
  }

  Future<void> saveFavoritesToFirebase() async {
    if (user != null) {
      await firestore
          .collection('users')
          .doc(user!.uid)
          .set({'favorites': favoriteProducts.map((p) => p.toJson()).toList()});
    }
  }

  void loadFavorites() async {
    if (user != null) {
      DocumentSnapshot doc =
          await firestore.collection('users').doc(user!.uid).get();
      if (doc.exists) {
        var data = doc.data() as Map<String, dynamic>;
        var favorites = data['favorites'] as List<dynamic>;
        favoriteProducts.value =
            favorites.map((json) => Product.fromJson(json)).toList();
      }
    }
  }
}
