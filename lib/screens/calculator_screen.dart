import 'package:demo_calc_getx/controllers/operation_controller.dart';
import 'package:demo_calc_getx/screens/history_screen.dart';
import 'package:demo_calc_getx/widgets/button_layout.dart';
import 'package:demo_calc_getx/widgets/expression_container.dart';
import 'package:demo_calc_getx/widgets/expression_value.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final operationController = Get.put(OperationController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Calculator',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: false,
        actions: [
          GestureDetector(
              onTap: () {
                Get.to(HistoryScreen());
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.history,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            const ExpressionContainer(),
            const ExpressionValue(),
            ButtonLayout(),
          ],
        ),
      ),
    );
  }
}
