import 'package:flutter/material.dart';
import 'package:vegatables/model/vegetable_model.dart';

class VegetableDetailsScreen extends StatelessWidget {
  const VegetableDetailsScreen({super.key, required this.vegetables});

  final Vegetable vegetables;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: vegetables.gradientColors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Image.asset("assets/${vegetables.image}.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            child: Text(
              vegetables.title,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: vegetables.gradientColors[1],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,

            ),
            child: Text(
              vegetables.headline,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
