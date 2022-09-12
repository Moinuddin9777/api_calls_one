import 'package:api_one/Models/users_model.dart';
import 'package:get/get.dart';

import '../../Services/api_service.dart';

class UsersController extends GetxController {
  RxList<UsersModel> users = RxList();
  var url = "https://jsonplaceholder.typicode.com/users";

  getUsers() async {
    var response = await DioService().getMethod(url);

    if (response.statusCode == 200) {
      response.data.forEach((element) {
        users.add(UsersModel.fromJson(element));
      });
    }
  }

  @override
  void onInit() {
    getUsers();
    super.onInit();
  }
}
