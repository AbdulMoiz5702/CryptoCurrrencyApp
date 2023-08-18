import 'package:exchange/gate_way_screen.dart';
import 'package:exchange/models/user_info.dart';
import 'package:exchange/splash_Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  await Firebase.initializeApp();
  Hive.init(directory.path);
  Hive.registerAdapter(UserInfoAdapter());
  await Hive.openBox<UserInfoModel>('info');

  runApp(const MaterialApp(
    home:SplashScreen(),
  ));
}



