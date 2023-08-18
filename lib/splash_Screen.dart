import 'package:exchange/services/splash_services.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  SplashServices services = SplashServices();
  void initState() {
    // TODO: implement initState
    super.initState();
    services.splash(context);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff161C30),
      body: Center(child:  Image(image: AssetImage('assets/images/eth.gif'),fit: BoxFit.cover,)),
    );
  }
}
