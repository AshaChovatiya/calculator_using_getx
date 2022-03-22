import 'package:demo_calc_getx/controllers/history_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key}) : super(key: key);

  late HistoryController historyController;

  @override
  Widget build(BuildContext context) {
    historyController = Get.put(HistoryController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.delete_outline),
            ),
            onTap: () {
              historyController.deleteHistory();
            },
          )
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: historyController.result.isEmpty
          ? const Center(
              child: Text('No history', style: TextStyle(color: Colors.white)),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(10.0),
              itemCount: historyController.result.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 10),
              itemBuilder: (BuildContext context, int i) {
                return ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  tileColor: Colors.white54,
                  title: Text(
                    historyController.result[i].title,
                  ),
                  subtitle: Text(
                    historyController.result[i].subtitle,
                  ),
                );
              },
            ),
    );
  }
}
