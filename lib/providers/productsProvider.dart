import 'package:flutter/cupertino.dart';
import '../models/productModel.dart';
import '../services/productsService.dart';

class ProductsProvider with ChangeNotifier{
  ProductsModel ? productsModel ;
  getProducts() async {
    productsModel = await ProductService.getProducts();
    notifyListeners() ;
  }
}