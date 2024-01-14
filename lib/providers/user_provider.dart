import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String userName;

  UserProvider({this.userName = 'qdwefdf'});

  void changeUserName({
    required String newUserName,
    }) async {
    userName = newUserName;
    notifyListeners();
    }
}