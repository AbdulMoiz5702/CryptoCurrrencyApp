
import 'package:hive/hive.dart';
part 'user_info.g.dart';

@HiveType(typeId: 0)
class UserInfoModel  extends HiveObject {
 @HiveField(0)
 String firstName ;
 @HiveField(1)
 String lastName ;
 @HiveField(2)
 String phoneNumber;
 @HiveField(3)
 String email ;

 UserInfoModel({required this.firstName,required this.lastName,required this.phoneNumber,required this.email});
}