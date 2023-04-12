import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAppState extends ChangeNotifier {
  var sum = 0;
  void cpfDigitValidator(cpf) {
    var cpfDigit = 0;
    for (var i = 10; i >= 2; i--) {
      cpfDigit = int.parse(cpf[i]);
      sum += cpfDigit * i;
    }
    notifyListeners();
  }

  void cpfIsValid(cpf) {
    print('Testing');
  }
}
