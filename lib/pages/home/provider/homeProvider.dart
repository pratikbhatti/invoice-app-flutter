import 'package:demo17/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class HomeProvider extends ChangeNotifier {
  List homeStoreData = [];

  var validateKey = GlobalKey<FormState>();
  String dropdownvalue = 'Case';
  var items = [
    'Case',
    'Online',
  ];
  TextEditingController business_name = TextEditingController();
  TextEditingController business_number = TextEditingController();
  TextEditingController business_email = TextEditingController();
  void dropDown(String? newValue) {
    dropdownvalue = newValue!;
    notifyListeners();
  }

  void imageNull() {
    path = null;
    notifyListeners();
  }

  void addAll(String? image_path, String business_name, String business_number,
      String business_email, String payment) {
    homeStoreData.addAll(
        [image_path, business_name, business_number, business_email, payment]);
  }

  void image(XFile? img) {
    path = img!.path;
    notifyListeners();
  }
}
