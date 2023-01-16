import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../local_storage/shared_prefrences/prefs.dart';

class DialNumber extends StatefulWidget {
  const DialNumber({Key? key}) : super(key: key);

  @override
  State<DialNumber> createState() => _DialNumberState();
}

class _DialNumberState extends State<DialNumber> {
  late AppPreferences _appPreferences;
  int? phoneNumber;
  @override
  void initState() {
    super.initState();
    getNumber();
  }

  getNumber() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    _appPreferences = AppPreferences(sharedPrefs);
    phoneNumber = await _appPreferences.getPhoneNumber();
    log("number $phoneNumber");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dial number"),
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              _makePhoneCall(phoneNumber.toString());
            },
            child: const Text("Dial")),
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
