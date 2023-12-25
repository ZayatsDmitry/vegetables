import 'package:flutter/material.dart';
import 'package:vegatables/data/data.dart';
import 'package:vegatables/screens/vegetable_details_screen.dart';
import 'package:vegatables/widget/vegetable_tile_widget.dart';

class VegetableListingScreen extends StatefulWidget {
  const VegetableListingScreen({super.key});

  @override
  State<VegetableListingScreen> createState() => _VegetableListingScreenState();
}

class _VegetableListingScreenState extends State<VegetableListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vegetables"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
        ),
        child: ListView(
          children: vegetables
              .map(
                (vegetable) => Padding(
                  padding: const EdgeInsets.all(4),
                  child: GestureDetector(
                    child: VegetableTileScreen(
                      vegetable: vegetable,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  VegetableDetailsScreen(vegetables: vegetable,),
                        ),
                      );
                    },
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
