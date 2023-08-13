import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  static String routeName = "/delivery";
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivery"),
      ),
    );
  }
}
