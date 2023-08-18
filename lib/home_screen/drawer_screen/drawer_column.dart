import 'package:exchange/authentaction/Logout_button.dart';
import 'package:exchange/home_screen/drawer_screen/drawer_row.dart';
import 'package:exchange/information/user_info_screen.dart';
import 'package:flutter/material.dart';
import './drawer_profile.dart';


class DrawerColumn extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     const   SizedBox(height: 20,),
        ProfileRow(firstName: '',),
       const SizedBox(height: 30,),
        DrawerRow(text: 'Personal Info', icon: Icons.domain_verification_outlined,onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => UserInformationScreen()));
        },),
        const SizedBox(height: 40,),
        DrawerRow(text: 'Referral', icon: Icons.person_add_alt_outlined,),
        const SizedBox(height: 40,),
        DrawerRow(text: 'Task Center', icon: Icons.history_edu_outlined,),
        const SizedBox(height: 40,),
        DrawerRow(text: 'Reward Center', icon: Icons.emoji_events_outlined,),
        const SizedBox(height: 40,),
        DrawerRow(text: 'Pay', icon: Icons.price_check_outlined,),
        const SizedBox(height: 40,),
        DrawerRow(text: 'Gift Card', icon: Icons.card_giftcard_outlined,),
        const SizedBox(height: 40,),
        DrawerRow(text: 'My Gifts', icon: Icons.celebration_outlined,),
        const SizedBox(height: 40,),
        DrawerRow(text: 'Notification', icon: Icons.notifications_active_outlined,),
        const SizedBox(height: 40,),
        DrawerRow(text: 'Payment Methods', icon: Icons.pix_outlined,),
        const SizedBox(height: 40,),
        DrawerRow(text: 'Security', icon: Icons.gpp_good_outlined,),
        const SizedBox(height: 40,),
        DrawerRow(text: 'Help & Support', icon: Icons.support_agent_outlined,),
        const SizedBox(height: 40,),
        DrawerRow(text: 'Settings', icon: Icons.engineering_outlined,),
        const SizedBox(height: 40,),
        Logout(),
        const SizedBox(height: 40,),
      ],
    );
  }
}
