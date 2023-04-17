import 'package:flutter/material.dart';

class Pertemuan05Provider extends ChangeNotifier {
  bool _diSekolah = false;
  bool _diPraktik = true;
  bool _diKursus = false;

  bool get statusSekolah => _diSekolah;
  bool get statusPraktik => _diPraktik;
  bool get statusKursus => _diKursus;

  Set<String> _selectedPeminatan = {};
  Set<String> get selectedPeminatan => _selectedPeminatan;

  get setSekolah => null;

  get setPraktik => null;

  set setSekolah(val) {
    _diSekolah = val;
    notifyListeners();
  }

  set setPraktik(val) {
    _diPraktik = val;
    notifyListeners();
  }

  set setKursus(val) {
    _diKursus = val;
    notifyListeners();
  }

  void togglePeminatan(String peminatan) {
    if (_selectedPeminatan.contains(peminatan)) {
      _selectedPeminatan.remove(peminatan);
    } else {
      _selectedPeminatan.add(peminatan);
    }
    notifyListeners();
  }
}