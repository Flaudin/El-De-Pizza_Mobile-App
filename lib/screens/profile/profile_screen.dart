import 'package:flutter/material.dart';

import '../../components/custom_bottom_nav.dart';
import '../../enum.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
