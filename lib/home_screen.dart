import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemg/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //add this for initiliazition of getx
  final CounterController controller = Get.put(CounterController());

  // int counter = 20;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Tutorials'),
      ),
      body: Center(
        child: Obx(() {
          // syntax ObX
          return Text(
            //add controller with al counters its global
            controller.counter.toString(),
            style: TextStyle(fontSize: 60),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
      ),
    );
  }
}
