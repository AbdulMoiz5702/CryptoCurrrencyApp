import 'package:hive/hive.dart';

import '../models/user_info.dart';



class Boxes {
  static Box<UserInfoModel> getData () => Hive.box<UserInfoModel>('info');
}