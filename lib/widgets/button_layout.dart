import 'package:demo_calc_getx/controllers/operation_controller.dart';
import 'package:demo_calc_getx/widgets/operator_button.dart';
import 'package:demo_calc_getx/widgets/value_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonLayout extends StatelessWidget {
  OperationController operationController = Get.find();

  ButtonLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blueGrey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: Get.height * 0.15,
                      width: Get.width * 0.25,
                      child: SizedBox(
                          height: 60,
                          width: 60,
                          child: TextButton(
                            onPressed: () {
                              operationController.eraseCharacter();
                            },
                            child: const Text(
                              'C',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white10),
                            ),
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: Get.height * 0.15,
                      width: Get.width * 0.25,
                      child: SizedBox(
                          height: 60,
                          width: 60,
                          child: TextButton(
                            onPressed: () {
                              operationController.resetExp();
                            },
                            child: const Text(
                              'AC',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white10),
                            ),
                          )),
                    ),
                    OperatorButton("%"),
                    OperatorButton("+"),
                  ],
                ),
                Row(
                  children: [
                    ValueButton("7"),
                    ValueButton("8"),
                    ValueButton("9"),
                    OperatorButton("*"),
                  ],
                ),
                Row(
                  children: [
                    ValueButton("4"),
                    ValueButton("5"),
                    ValueButton("6"),
                    OperatorButton("/"),
                  ],
                ),
                Row(
                  children: [
                    ValueButton("1"),
                    ValueButton("2"),
                    ValueButton("3"),
                    OperatorButton("-"),
                  ],
                ),
                Row(
                  children: [
                    ValueButton("0"),
                    ValueButton("00"),
                    OperatorButton("."),
                    Container(
                      alignment: Alignment.center,
                      height: Get.height * 0.15,
                      width: Get.width * 0.25,
                      child: SizedBox(
                          height: 60,
                          width: 60,
                          child: TextButton(
                            onPressed: () {
                              operationController.evalExp();
                            },
                            child: const Text(
                              '=',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20.0,
                              ),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
