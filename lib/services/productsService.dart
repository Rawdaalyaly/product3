import 'package:dio/dio.dart';

import '../models/productModel.dart';

class ProductService
{
  static Dio dio = Dio();
  static Future<ProductsModel>getProducts() async{
    var url = "https://student.valuxapps.com/api/home";
    Response response = await dio.get(url);
    try{
      if(response.statusCode==200){
        return ProductsModel.fromJson(response.data);
      }
      else{
        throw Exception("error in retrieving data ");
      }
    }
    catch(e){
      throw Exception("error in retrieving data ${e}");
    }
  }
}