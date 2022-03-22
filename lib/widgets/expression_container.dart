import 'package:demo_calc_getx/controllers/operation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpressionContainer extends StatelessWidget {
  const ExpressionContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      height: Get.height * 0.1,
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      alignment: Alignment.centerRight,
      child: GetBuilder<OperationController>(
        builder: (controller) {
          return Text(
            controller.exp.isEmpty ? "0" : controller.exp,
            maxLines: 2,
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35.0,
              fontWeight: FontWeight.w700,
            ),
          );
        },
      ),
    );
  }
}
