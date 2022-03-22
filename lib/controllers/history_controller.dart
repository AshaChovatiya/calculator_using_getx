import 'package:demo_calc_getx/model/history_model.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class HistoryController extends GetxController {
  List<HistoryModel> result = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    result = Hive.box<HistoryModel>('history')
        .values
        .toList()
        .reversed
        .toList()
        .cast<HistoryModel>();
  }

  deleteHistory() {
    Get.back();
    Hive.box<HistoryModel>('history').clear();

    Get.snackbar("Delete", 'History cleared successfully',
        snackPosition: SnackPosition.BOTTOM);
  }
}
