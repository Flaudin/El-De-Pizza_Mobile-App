import 'package:eldepizza/screens/delivery/components/delivery_info.dart';
import 'package:eldepizza/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DeliveryScreen extends StatelessWidget {
  static String routeName = "/delivery";
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            icon: const Icon(
              Icons.chevron_left,
              size: 34,
            )),
        automaticallyImplyLeading: false,
        title: const Text(
          "Order Status",
          style: TextStyle(color: Colors.black45),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          LottieBuilder.asset("android/assets/json-images/on_process.json"),
          const SizedBox(
            height: 20,
          ),
          const Text("On Process",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold))
        ],
      )),
      bottomNavigationBar: const DeliveryInfo(),
    );
  }
}
