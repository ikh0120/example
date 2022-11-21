import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider_windows/path_provider_windows.dart';

void showWinToast(String msg, context) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width - 300,
        0,
        MediaQuery.of(context).size.width * 0.03,
        30,
      ),
      duration: Duration(seconds: 5),
      backgroundColor: Colors.white,
      behavior: SnackBarBehavior.floating,
      elevation: 10,
      content: Text(
        msg,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Colors.grey,
          width: 2,
        ),
      ),
    ),
  );
}

double checkPositive(double num) {
  if (num > 0) {
    return num;
  } else {
    return 0;
  }
}

bool checkNumBiggerWidth(double num, context) {
  if (MediaQuery.of(context).size.width > num) {
    return true;
  } else {
    return false;
  }
}

double getNumBiggerWidth(double num, context) {
  if (MediaQuery.of(context).size.width > num) {
    return MediaQuery.of(context).size.width;
  } else {
    return num;
  }
}

double getNumBiggerHeight(double num, context) {
  if (MediaQuery.of(context).size.height > num) {
    return MediaQuery.of(context).size.height;
  } else {
    return num;
  }
}

class LocalStorage {
  final fileName;

  PathProviderWindows provider = PathProviderWindows();

  LocalStorage(this.fileName) {}
  Future<File> get _localFile async {
    String? path2 = await provider.getApplicationDocumentsPath();
    String path = '$path2' + '/Insta2 DB';

    await Directory(path).create();
    return File('$path/$fileName');
  }

  Future<void> writeFile(String msg) async {
    final file = await _localFile;
    file.writeAsString(msg, mode: FileMode.append);
  }

  Future<String> readFile() async {
    try {
      final file = await _localFile;
      return await file.readAsString();
    } catch (e) {
      return e.toString();
    }
  }
}
