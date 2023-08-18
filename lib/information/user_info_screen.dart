import 'package:exchange/gate_way_screen.dart';
import 'package:exchange/hiveBoxes/boxes.dart';
import 'package:exchange/home_screen/drawer_screen/drawer_column.dart';
import 'package:exchange/home_screen/drawer_screen/drawer_profile.dart';
import 'package:exchange/models/user_info.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import './user_info _textfeild.dart';
import './user_info_container.dart';

class UserInformationScreen extends StatefulWidget {
  UserInformationScreen({Key? key}) : super(key: key);

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();


  Future<void> _showUserDialogBox() async {
    return showDialog(
        context: context, builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 20,
            scrollable: true,
            backgroundColor: Colors.grey,
            content: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  UserInfoTextField(controller: firstNameController, hintText: 'First Name'),
                  const SizedBox(height: 15,),
                  UserInfoTextField(controller: lastNameController, hintText: 'Last Name'),
                  const SizedBox(height: 15,),
                  UserInfoTextField(controller: emailController, hintText: 'Phone Number'),
                  const SizedBox(height: 15,),
                  UserInfoTextField(controller: phoneNumberController, hintText: 'Email address'),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
            title:const Text('Personal Information'),
            actions: [
              TextButton(onPressed: (){
                final userData = UserInfoModel(firstName: firstNameController.text, lastName: lastNameController.text, phoneNumber: phoneNumberController.text, email: emailController.text);
                final box = Boxes.getData();
                box.add(userData);
                firstNameController.clear();
                lastNameController.clear();
                phoneNumberController.clear();
                emailController.clear();
                // setState(() {
                //   ProfileRow(firstName: userData.firstName);
                // });
                userData.save();
                Navigator.pop(context);
              },
                  child:const Text('Add Info',style: TextStyle(color: Colors.black),)
              ),
              TextButton(onPressed: (){

                Navigator.pop(context);
              },
                  child:const Text('Cancel',style: TextStyle(color: Colors.black),),
              ),
            ],);
    }
    );

  }

  Future<void> _updateshowUserDialogBox(UserInfoModel userInfoModel,String firstName ,String lastName ,String phoneNumber ,String email) async {

    firstNameController.text = firstName ;
    lastNameController.text = lastName ;
    phoneNumberController.text = phoneNumber;
    emailController.text = email ;
    return showDialog(
        context: context, builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 20,
        backgroundColor: Colors.grey,
        content: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10,),
              UserInfoTextField(controller: firstNameController, hintText: 'First Name'),
              const SizedBox(height: 15,),
              UserInfoTextField(controller: lastNameController, hintText: 'Last Name'),
              const SizedBox(height: 15,),
              UserInfoTextField(controller: emailController, hintText: 'Phone Number'),
              const SizedBox(height: 15,),
              UserInfoTextField(controller: phoneNumberController, hintText: 'Email address'),
              const SizedBox(height: 10,),
            ],
          ),
        ),
        title:const Text('Personal Information'),
        actions: [
          TextButton(onPressed: (){
            final userData = UserInfoModel(firstName: firstNameController.text, lastName: lastNameController.text, phoneNumber: phoneNumberController.text, email: emailController.text);
            final box = Boxes.getData();
            box.add(userData);
            userInfoModel.firstName = firstNameController.text.toString();
            userInfoModel.lastName =lastNameController.text.toString();
            userInfoModel.phoneNumber =phoneNumberController.text.toString();
            userInfoModel.email= emailController.text.toString();
           // setState(() {
           //    ProfileRow(firstName:userData.firstName,);
           //  });
             userData.save();
             Navigator.pop(context);
          },
              child:const Text('Edit Info',style: TextStyle(color: Colors.black),)
          ),
          TextButton(onPressed: (){
            Navigator.pop(context);
          },
            child:const Text('Cancel',style: TextStyle(color: Colors.black),),
          ),
        ],);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:const Color(0xff0D1019),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,),
            child:ValueListenableBuilder<Box<UserInfoModel>>(
                valueListenable: Boxes.getData().listenable(),
                builder: (context ,box ,_){
                  var data = box.values.toList().cast<UserInfoModel>.call();
                  return ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context,index){
                       return Column(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const GateWay()));
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 400,top: 20),
                                child: Container(
                                  height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white12,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(Icons.arrow_back_ios_new,size: 30,color: Colors.white,opticalSize: 20,)),
                              )),
                            const  SizedBox(height: 150,),
                           const Text('Personal Info',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                            const  SizedBox(height: 20,),
                            UserContainer(text:data[index].firstName,ontap:(){
                              _updateshowUserDialogBox(data[index], data[index].firstName, data[index].lastName, data[index].phoneNumber,data[index].email,);
                            } ,),
                            const  SizedBox(height: 15,),
                            UserContainer(text: data[index].lastName,ontap:(){
                              _updateshowUserDialogBox(data[index], data[index].firstName, data[index].lastName, data[index].phoneNumber,data[index].email,);
                            }),
                            const  SizedBox(height: 15,),
                            UserContainer(text: data[index].email,ontap:(){
                              _updateshowUserDialogBox(data[index], data[index].firstName, data[index].lastName, data[index].phoneNumber,data[index].email,);
                            }),
                            const  SizedBox(height: 15,),
                            UserContainer(text: data[index].phoneNumber,ontap:(){
                              _updateshowUserDialogBox(data[index], data[index].firstName, data[index].lastName, data[index].phoneNumber,data[index].email,);
                            }),
                            const  SizedBox(height: 30,),
                            InkWell(
                              onTap: (){
                                _showUserDialogBox();
                              },
                              child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:Colors.white,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children:const [
                                        SizedBox(width: 50,),
                                        Text('Add Information' ,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16) ,),
                                        SizedBox(width: 20,),
                                        Icon(Icons.manage_accounts_outlined,color: Colors.black,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                     }
                  );
                }
            ),
          ),
        ),
      ),
    );
  }
}
