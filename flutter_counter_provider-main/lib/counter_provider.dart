import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  // Propiedad para el contador
  int value = 0;
  
  // Propiedad adicional para saludar
  String saludar = 'Hola Mundo';

  // Método para incrementar el valor del contador
  void increment() {
    value += 1;
    notifyListeners();
  }

  // Método para decrementar el valor del contador
  void decrement() {
    value -= 1;
    notifyListeners();
  }
}
