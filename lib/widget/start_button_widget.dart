import 'package:flutter/material.dart';
import 'package:vegatables/screens/vegetable_listing_screen.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(color: Colors.white),
          )),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const VegetableListingScreen(),
            ),
          );
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Get started",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}
