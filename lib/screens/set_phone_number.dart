import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:widget_test/route_managerment/route_manager.dart';

import '../local_storage/shared_prefrences/prefs.dart';

class SetPhoneNumber extends StatefulWidget {
  const SetPhoneNumber({Key? key}) : super(key: key);

  @override
  State<SetPhoneNumber> createState() => _SetPhoneNumberState();
}

class _SetPhoneNumberState extends State<SetPhoneNumber> {
  final GlobalKey<FormState> formKey = GlobalKey();

  late AppPreferences _appPreferences;

  @override
  void initState() {
    super.initState();

    getPreference();
  }

  getPreference() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    _appPreferences = AppPreferences(sharedPrefs);
  }

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Set number")),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Center(
                child: TextFormField(
                  controller: _textEditingController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "It can be empty";
                    } else if (!value.isValidNumber()) {
                      return "This is not valid phone number";
                    }
                    return null;
                  },
                )),
            Center(
              child: OutlinedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      _appPreferences.setPhoneNumber(
                          int.parse(_textEditingController.text.trim()));
                      Navigator.pushNamed(context, Routes.dialNumber);
                    }
                  },
                  child: const Text("Save number")),
            ),
            Center(
              child: OutlinedButton(
                  onPressed: () async {
                    var number = await _appPreferences.getPhoneNumber();
                    log("number $number");
                  },
                  child: const Text("print number")),
            ),
          ],
        ),
      ),
    );
  }
}

extension StringExtension on String {

  bool isValidNumber() {
    bool isValid = RegExp(r'(^[0-9]{10}$)').hasMatch(this);
    return isValid;
  }
}