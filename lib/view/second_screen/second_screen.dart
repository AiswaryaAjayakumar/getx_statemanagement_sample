// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_statemanagement_sample/controller/home_screen_controller.dart';
import 'package:getx_statemanagement_sample/view/third_screen/third_screen.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  HomeScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GetBuilder<HomeScreenController>(
            builder: (controller) => Text(
              controller.count.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.decrement();
                
              },
              child: Text("Decrement")),
          ElevatedButton(
              onPressed: () {
                // Get.to(() => ThirdScreen());
                Get.to(() => ThirdScreen());
              },
              child: Text("To third screen")),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: Text("+"),
      ),
    );
  }
}
