import 'package:demo_calc_getx/model/history_model.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:math_expressions/math_expressions.dart';

class OperationController extends GetxController {
  String exp = "";
  String expVal = "";
  bool isStart = true;
  RxBool isOperatorEnabled = false.obs;

  void changeExp(String s) {
    if (isStart == true) {
      exp == "";
      update();

      changeIsStart(false);
    }
    exp += s;
    update();
  }

  void changeIsStart(bool val) {
    isStart = val;
  }

  void resetExp() {
    exp = "";
    expVal = "";
    update();
  }

  void eraseCharacter() {
    if (exp != null && exp.length > 0) {
      exp = exp.substring(0, exp.length - 1);
      update();
      changeIsStart(false);
    }
  }

  void evalExp() {
    String exp1;
    if (exp.contains('%')) {
      exp1 = exp.replaceAll('%', '/100*');
    } else {
      exp1 = exp;
    }
    Parser p = Parser();
    Expression expV = p.parse(exp1);
    ContextModel cm = ContextModel();
    expVal = expV.evaluate(EvaluationType.REAL, cm).toString();

    final historyItem = HistoryModel()
      ..title = expVal
      ..subtitle = exp;
    Hive.box<HistoryModel>('history').add(historyItem);

    update();
    changeIsStart(true);
  }
}
