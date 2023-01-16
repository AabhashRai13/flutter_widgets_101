import 'package:shared_preferences/shared_preferences.dart';

const String phoneNumber = "PHONE_NUMBER";

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<void> setPhoneNumber(int number) async {
    _sharedPreferences.setInt(phoneNumber, number);
  }

  Future<int?> getPhoneNumber() async {
    return _sharedPreferences.getInt(phoneNumber);
  }
}
