import 'package:demo17/pages/addData/modal/addDataModal.dart';
import 'package:flutter/cupertino.dart';

class AddDataProvider extends ChangeNotifier {
  List<IteamModel> addDataStore = [];

  num total_answer = 0;

  void total_ans() {
    total_answer = 0;
    for (int i = 0; i < addDataStore.length; i++) {
      total_answer = total_answer + num.parse("${addDataStore[i].TotalPrice}");
    }
  }

  void cleanData() {
    addDataStore.clear();
    notifyListeners();
  }

  void increment(index) {
    addDataStore[index].iteamQuantity = addDataStore[index].iteamQuantity! + 1;
    notifyListeners();
  }

  void decrement(index) {
    addDataStore[index].iteamQuantity = addDataStore[index].iteamQuantity! - 1;
    notifyListeners();
  }

  void deleteList(index) {
    addDataStore.removeAt(index);
    notifyListeners();
  }

  void deleteButton(index) {
    addDataStore.removeAt(index);
    notifyListeners();
  }

  void increment_total_amout(index) {
    addDataStore[index].TotalPrice =
        num.parse("${addDataStore[index].iteamQuantity}") *
            num.parse("${addDataStore[index].iteamPrice}");
    notifyListeners();
  }

  void decrement_total_amout(index) {
    addDataStore[index].TotalPrice =
        num.parse("${addDataStore[index].iteamQuantity}") *
            num.parse("${addDataStore[index].iteamPrice}");
    notifyListeners();
  }

  // void add(IteamModel i1, index) {
  //   addDataStore[index] = IteamModel(
  //       iteamName: i1.iteamName,
  //       iteamQuantity: i1.iteamQuantity! + 1,
  //       iteamPrice: i1.TotalPrice);
  //   notifyListeners();
  // }

  TextEditingController iteamName = TextEditingController();
  TextEditingController iteamQuantity = TextEditingController();
  TextEditingController iteamPrice = TextEditingController();
}
