// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_statemanagement_sample/controller/home_screen_controller.dart';
import 'package:getx_statemanagement_sample/view/second_screen/second_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //to create controller of homeScreenController
  HomeScreenController controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //to update state
          GetBuilder<HomeScreenController>(
            builder: (controller) => Text(
              controller.count.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.decrement();
                Get.changeTheme(ThemeData.dark());
              },
              child: Text("Decrement")),
          ElevatedButton(
              onPressed: () {
                Get.to(() => SecondScreen());
                Get.snackbar("title", "message");
                // Get.showSnackbar(GetSnackBar(
                //   title: "title",
                //   message: "message",
                //   icon: Icon(Icons.person),
                // ));
              },
              child: Text("To second screen")),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
          Get.changeTheme(ThemeData.light());
        },
        child: Text("+"),
      ),
    );
  }
}
