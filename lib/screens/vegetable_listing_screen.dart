import 'package:flutter/material.dart';


class VegetableListingScreen extends StatefulWidget {
  const VegetableListingScreen({super.key});

  @override
  State<VegetableListingScreen> createState() => _VegetableListingScreenState();
}

class _VegetableListingScreenState extends State<VegetableListingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("VegetableDetailsScreen"),
        ),
      ),
    );
  }
}
