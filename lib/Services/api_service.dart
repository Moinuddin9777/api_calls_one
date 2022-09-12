import 'package:dio/dio.dart';
import 'dart:developer';

class DioService {
  Future<dynamic> getMethod(String url) async {
    Dio dio = Dio();

    return await dio
        .get(url,
            options: Options(responseType: ResponseType.json, method: "GET"))
        .then((response) {
      print('###############Aagaya Response###############');
      return response;
    });
  }
}



// class ApiService {
//   Future<List<ProductModel>> getProducts() async {
//     var dio = await getDio();
//   }
// }

// class ApiService {
//   var client = http.Client();
//   Future<List<ProductModel>> fetchProducts() async {
//     var response = await client.get(
//         'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
//     if (response.statusCode == 200) {
//       var jsonString = response.body;
//       return productModelFromJson(jsonString);
//     }
//   }
// }


// class DioClient {
//   final Dio dio = Dio();
//   static const baseURL = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";
//   static const postsEndpoint= baseURL;

//   Future<Product> fetchProduct(int id) async{
//     try{
//       final response = await dio.get(postsEndpoint);
//     }
//   }

// }
