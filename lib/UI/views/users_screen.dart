// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:api_one/UI/controllers/users_controller.dart';
import 'package:flutter/material.dart';
import 'package:api_one/Services/api_service.dart';
import 'package:get/get.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  UsersController usersController = Get.put(UsersController());

  @override
  Widget build(BuildContext context) {
    DioService().getMethod('https://jsonplaceholder.typicode.com/users');
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Obx(
        () => ListView.builder(
            itemCount: usersController.users.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    depth: 10,
                  ),
                  child: Card(
                    margin: EdgeInsets.zero,
                    child: ListTile(
                      title: Text(usersController.users[index].name),
                      subtitle:
                          Text(usersController.users[index].email.toString()),
                      leading: Neumorphic(
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          depth: 9,
                          intensity: 3,
                          boxShape: NeumorphicBoxShape.circle(),
                        ),
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child:
                              Text(usersController.users[index].id.toString()),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
