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

  int _currentBpm = 85;
  int get currentBpm => _currentBpm;
  set currentBpm(int value) {
    _currentBpm = value;
  }

  double _currentGsr = 32.0;
  double get currentGsr => _currentGsr;
  set currentGsr(double value) {
    _currentGsr = value;
  }

  String _userName = 'Angela';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
  }

  bool _examModeEnabled = false;
  bool get examModeEnabled => _examModeEnabled;
  set examModeEnabled(bool value) {
    _examModeEnabled = value;
  }

  String _filterCategory = 'Todos';
  String get filterCategory => _filterCategory;
  set filterCategory(String value) {
    _filterCategory = value;
  }
}
