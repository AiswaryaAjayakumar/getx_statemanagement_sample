// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_statemanagement_sample/controller/home_screen_controller.dart';
import 'package:getx_statemanagement_sample/view/home_screen/home_screen.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({super.key});

  HomeScreenController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementNum();
        },
        child: Text("+"),
      ),
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Obx(
            () => Text(controller.num.value.toString()),
          ),
          ElevatedButton(
              onPressed: () {
                // Get.to(() => HomeScreen());
                Get.to(() => HomeScreen());
              },
              child: Text("To first screen")),
        ],
      )),
    );
  }
}
