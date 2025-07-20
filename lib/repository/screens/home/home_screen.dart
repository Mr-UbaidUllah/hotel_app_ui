import 'package:flutter/material.dart';
import 'package:hotel_ui/repository/widgets/custome_container.dart';
import 'package:hotel_ui/repository/widgets/ui_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          locationAndSearchBar(),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.customText(
                        text: 'Special for you',
                        color: const Color(0XFF000000),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    UiHelper.customText(
                        text: 'See all',
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ],
                ),
              ),
              const MyCard(),
              const SizedBox(
                height: 20,
              ),

              // Customer Support container
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF00A676),
                            Color(0xFF05623C),
                          ]),
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                              color: Colors.lightGreen, shape: BoxShape.circle),
                          child: const Image(
                            image: AssetImage(
                                'assets/images/customer-service.png'),
                            width: 40,
                            height: 4,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                        Column(
                          children: [
                            UiHelper.customText(
                                text: "Customer Support",
                                color: const Color(0XFFFFFFFF),
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                            UiHelper.customText(
                                text: "24/7 Comprehensive \n support",
                                color: const Color(0XFFFFFFFF),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // our services
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UiHelper.customText(
                            text: 'Our Services',
                            color: const Color(0XFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        UiHelper.customText(
                            text: 'See All',
                            color: const Color(0xFF00A676),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                    Row(
                      children: [
                        ServiceCard(
                            imagePath: 'assets/images/bed1.png',
                            title: 'Accommodation',
                            text: "Luxury Living Spaces",
                            onTap: () {}),
                        ServiceCard(
                            imagePath: 'assets/images/catering.png',
                            title: 'Catering',
                            text: "Nutritious Dining, Tailored for every taste",
                            onTap: () {}),
                        ServiceCard(
                            imagePath: 'assets/images/it.png',
                            title: 'IT Services',
                            text: "Smart digital solution, Driven by innovation",
                            onTap: () {}),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}

// top bar
Widget locationAndSearchBar() {
  return Container(
    height: 150,
    width: double.infinity,
    decoration: const BoxDecoration(color: Color(0XFF05623C)),
    child: Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 15, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UiHelper.customText(
                      text: "Location",
                      color: const Color(0XFFF5F5F5),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 15,
                        color: Color(0XFFFFFFFF),
                      ),
                      UiHelper.customText(
                          text: "Saudi Arabia",
                          fontSize: 15,
                          color: const Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w500),
                    ],
                  )
                ],
              ),

              // notification icon
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                child: Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Color(0XFFFFFFFF),
                        )),
                    Positioned(
                      right: 10,
                      top: 12,
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                            color: Color(0XFFFF3D3D), shape: BoxShape.circle),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          // search bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 45,
                  width: 330,
                  decoration: BoxDecoration(
                      color: const Color(0XFFFFFFFF),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        UiHelper.customText(
                            text: "Search",
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.normal)
                      ],
                    ),
                  )),

              // filter icon container
              Container(
                height: 45,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    borderRadius: BorderRadius.circular(5)),
                child: UiHelper.customImage(img: "more.png"),
              )
            ],
          )
        ],
      ),
    ),
  );
}

//  card container
class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int currentIndex = 0;
  final List<String> offerCardImages = [
    'assets/images/bedroom2.jpg',
    'assets/images/bedroom2.jpg',
    'assets/images/bedroom2.jpg',
  ];

  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 0, viewportFraction: 0.85);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          child: PageView.builder(
            controller: controller,
            itemCount: offerCardImages.length,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, i) {
              return Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 3,
                        offset: Offset(0, 4),
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(offerCardImages[i]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //limited time button
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0XFFFFFFFF)),
                          alignment: Alignment.center,
                          child: UiHelper.customText(
                              text: "Limited Time",
                              color: const Color(0XFF000000),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        UiHelper.customText(
                            text: "Get Special Offer",
                            color: const Color(0XFFFFFFFF),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        Row(
                          children: [
                            UiHelper.customText(
                                text: "Up to",
                                color: const Color(0xFFFFFFFF),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            const SizedBox(
                              width: 6,
                            ),
                            UiHelper.customText(
                                text: "40%",
                                color: const Color(0XFFFFFFFF),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0XFFFFFFFF)),
                              alignment: Alignment.center,
                              child: UiHelper.customText(
                                  text: "Claim",
                                  color: const Color(0XFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(offerCardImages.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 8,
              width: currentIndex == index ? 16 : 8,
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? const Color(0xFF05623C)
                    : Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          }),
        ),
      ],
    );
  }
}
