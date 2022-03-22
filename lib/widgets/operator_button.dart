import 'package:demo_calc_getx/controllers/operation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OperatorButton extends StatelessWidget {
  final String val;

  OperatorButton(this.val, {Key? key}) : super(key: key);
  OperationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        alignment: Alignment.center,
        width: Get.width * 0.25,
        height: Get.height * 0.10,
        child: SizedBox(
          width: 60,
          height: 60,
          child: TextButton(
            onPressed: controller.isOperatorEnabled.value
                ? () {
                    controller.isOperatorEnabled.value = false;
                    controller.changeExp(val.toString());
                  }
                : () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Text(
              val.toString(),
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
