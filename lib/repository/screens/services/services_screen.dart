import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_ui/repository/widgets/ui_helper.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const SizedBox(
                    height: 400,
                    width: 400,
                    child: Image(
                      image: NetworkImage(
                          "https://media.licdn.com/dms/image/v2/C4D0BAQH4YpW3QAyGIA/company-logo_200_200/company-logo_200_200/0/1648205683143?e=2147483647&v=beta&t=gPjmFVxrAUPtA-spT1CnjzxRQpd1EVSuK4KuB7oLvy0"),
                      fit: BoxFit.cover,
                    )),
                Positioned(
                    bottom: 100,
                    left: 20,
                    child: UiHelper.customText(
                        text: "Your trusted partner",
                        color: Colors.black26,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                Positioned(
                    bottom: 20,
                    left: 20,
                    child: UiHelper.customText(
                        text: "Comprehensive Logistic \nSolutions",
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 0.0, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 9,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  UiHelper.customText(
                      text: "OUR SERVICES",
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 170,
                    width: 150,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF00A676),
                              Color(0xFF05623C),
                            ]),
                        borderRadius: BorderRadius.circular(14)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.bed,
                            color: CupertinoColors.white,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          UiHelper.customText(
                              text: "Accommodation",
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                          const SizedBox(height: 10),
                          UiHelper.customText(
                              text: "Luxury living space",
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF00A676),
                              Color(0xFF05623C),
                            ]),
                        borderRadius: BorderRadius.circular(14)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white24),
                              child: const Icon(
                                Icons.call_outlined,
                                size: 30,
                                color: CupertinoColors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                UiHelper.customText(
                                    text: "Support Services",
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                                UiHelper.customText(
                                    text: "24/7 comprehensive support",
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                 Center(child:  UiHelper.customText(
                     text: "WHY CHOOSE US",
                     color: Colors.black,
                     fontSize: 20,
                     fontWeight: FontWeight.bold),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
