import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _alunoId = '';
  String get alunoId => _alunoId;
  set alunoId(String value) {
    _alunoId = value;
  }

  int _planetaNum = 0;
  int get planetaNum => _planetaNum;
  set planetaNum(int value) {
    _planetaNum = value;
  }

  int _planetaCor = 0;
  int get planetaCor => _planetaCor;
  set planetaCor(int value) {
    _planetaCor = value;
  }

  int _planetaObj = 0;
  int get planetaObj => _planetaObj;
  set planetaObj(int value) {
    _planetaObj = value;
  }

  int _planetaLetra = 0;
  int get planetaLetra => _planetaLetra;
  set planetaLetra(int value) {
    _planetaLetra = value;
  }

  String _userID = '';
  String get userID => _userID;
  set userID(String value) {
    _userID = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _alunoIdSelect = '';
  String get alunoIdSelect => _alunoIdSelect;
  set alunoIdSelect(String value) {
    _alunoIdSelect = value;
  }

  String _selectedValue = '';
  String get selectedValue => _selectedValue;
  set selectedValue(String value) {
    _selectedValue = value;
  }

  String _tempoInicial = '';
  String get tempoInicial => _tempoInicial;
  set tempoInicial(String value) {
    _tempoInicial = value;
  }

  String _tempoFinal = '';
  String get tempoFinal => _tempoFinal;
  set tempoFinal(String value) {
    _tempoFinal = value;
  }
}
