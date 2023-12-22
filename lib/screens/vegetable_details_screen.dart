import 'package:flutter/material.dart';

class VegetableDetailsScreen extends StatefulWidget {
  const VegetableDetailsScreen({super.key});

  @override
  State<VegetableDetailsScreen> createState() => _VegetableDetailsScreenState();
}

class _VegetableDetailsScreenState extends State<VegetableDetailsScreen> {
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
