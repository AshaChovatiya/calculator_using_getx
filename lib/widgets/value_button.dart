import 'package:demo_calc_getx/controllers/operation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValueButton extends StatelessWidget {
  final String val;

  ValueButton(this.val, {Key? key}) : super(key: key);
  OperationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.isOperatorEnabled.value = true;
        controller.changeExp(val.toString());
      },
      child: Container(
        alignment: Alignment.center,
        width: Get.width * 0.25,
        height: Get.height * 0.10,
        child: Text(
          val.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
