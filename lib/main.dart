import 'package:bai_tap_lon/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  await Firebase.initializeApp();

  runApp(const App());
}
