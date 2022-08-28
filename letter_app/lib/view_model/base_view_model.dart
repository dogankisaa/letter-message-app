import 'package:flutter/material.dart';


abstract class BaseViewModel with ChangeNotifier {
  late BuildContext context;
  

  

  bool isLoading = false;

  void checkLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}