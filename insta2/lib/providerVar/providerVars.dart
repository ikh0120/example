import 'package:flutter/material.dart';

class providerVariable extends ChangeNotifier {
  String name = "cever";
  String id = "1234";
  String password = "1234";

  String temp_name = "";
  String temp_id = "";
  String temp_password = "";

  void updating() {
    name = temp_name;
    id = temp_id;
    password = temp_password;
    notifyListeners();
  }

  void temp_updating(String _name, String _id, String _password) {
    temp_name = _name;
    temp_id = _id;
    temp_password = _password;
    notifyListeners();
  }
}
