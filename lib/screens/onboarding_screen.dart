import 'package:flutter/material.dart';
import 'package:vegatables/data/data.dart';
import 'package:vegatables/widget/start_button_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  // color: Colors.black,
                  gradient: LinearGradient(
                      colors: vegetables[index].gradientColors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/${vegetables[index].image}.png"),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      vegetables[index].title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        vegetables[index].headline,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    currentPage == 3 ? const StartButton() : Container(),

                    currentPage == 3 ? const SizedBox(height: 20,) : Container(),
                  const SizedBox(height: 20,),
                    buildPageIndicator()
                  ],
                ),
              ),
            );
          },
          onPageChanged: (int page) {
            setState(() {
              currentPage = page;
            });
          },

        ),

      ),
    );
  }

  Widget buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        4,
        (index) {
          return Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentPage == index ? Colors.white : Colors.grey.shade600,
            ),
          );
        },
      ),
    );
  }
}
