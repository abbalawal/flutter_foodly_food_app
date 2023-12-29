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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _totalPrice = prefs.getDouble('ff_totalPrice') ?? _totalPrice;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _quantity = 1;
  int get quantity => _quantity;
  set quantity(int _value) {
    _quantity = _value;
  }

  List<String> _foodname = [];
  List<String> get foodname => _foodname;
  set foodname(List<String> _value) {
    _foodname = _value;
  }

  void addToFoodname(String _value) {
    _foodname.add(_value);
  }

  void removeFromFoodname(String _value) {
    _foodname.remove(_value);
  }

  void removeAtIndexFromFoodname(int _index) {
    _foodname.removeAt(_index);
  }

  void updateFoodnameAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _foodname[_index] = updateFn(_foodname[_index]);
  }

  void insertAtIndexInFoodname(int _index, String _value) {
    _foodname.insert(_index, _value);
  }

  List<double> _foodprices = [];
  List<double> get foodprices => _foodprices;
  set foodprices(List<double> _value) {
    _foodprices = _value;
  }

  void addToFoodprices(double _value) {
    _foodprices.add(_value);
  }

  void removeFromFoodprices(double _value) {
    _foodprices.remove(_value);
  }

  void removeAtIndexFromFoodprices(int _index) {
    _foodprices.removeAt(_index);
  }

  void updateFoodpricesAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _foodprices[_index] = updateFn(_foodprices[_index]);
  }

  void insertAtIndexInFoodprices(int _index, double _value) {
    _foodprices.insert(_index, _value);
  }

  List<String> _foodimages = [];
  List<String> get foodimages => _foodimages;
  set foodimages(List<String> _value) {
    _foodimages = _value;
  }

  void addToFoodimages(String _value) {
    _foodimages.add(_value);
  }

  void removeFromFoodimages(String _value) {
    _foodimages.remove(_value);
  }

  void removeAtIndexFromFoodimages(int _index) {
    _foodimages.removeAt(_index);
  }

  void updateFoodimagesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _foodimages[_index] = updateFn(_foodimages[_index]);
  }

  void insertAtIndexInFoodimages(int _index, String _value) {
    _foodimages.insert(_index, _value);
  }

  List<int> _foodquantity = [];
  List<int> get foodquantity => _foodquantity;
  set foodquantity(List<int> _value) {
    _foodquantity = _value;
  }

  void addToFoodquantity(int _value) {
    _foodquantity.add(_value);
  }

  void removeFromFoodquantity(int _value) {
    _foodquantity.remove(_value);
  }

  void removeAtIndexFromFoodquantity(int _index) {
    _foodquantity.removeAt(_index);
  }

  void updateFoodquantityAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _foodquantity[_index] = updateFn(_foodquantity[_index]);
  }

  void insertAtIndexInFoodquantity(int _index, int _value) {
    _foodquantity.insert(_index, _value);
  }

  double _totalPrice = 0;
  double get totalPrice => _totalPrice;
  set totalPrice(double _value) {
    _totalPrice = _value;
    prefs.setDouble('ff_totalPrice', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
