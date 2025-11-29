import 'package:flutter/material.dart';
import 'package:hotel_ui/repository/widgets/ui_helper.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF00A676),
                            Color(0xFF05623C),
                          ]),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 100,
                    right: 100,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(14)),
                      child: UiHelper.customText(
                          text: "Order History",
                          color: Colors.white54,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      alignment: Alignment.center,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UiHelper.customText(
                        text: "Track your order history",
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
          
                    UiHelper.customText(
                        text: "Select a category to view detailed\norder delivery",
                        color: Colors.black38,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
          
                    const SizedBox(height: 20,),
                   Wrap(
                     alignment: WrapAlignment.start,
                     spacing: 20,
                     children: [
                       Container(
                         padding: const EdgeInsets.all(10),
                         height: 200,
                         width: 160,
                         decoration:  BoxDecoration(
                           borderRadius: BorderRadius.circular(9),
                           gradient: const LinearGradient(
                               begin: Alignment.centerLeft,
                               end: Alignment.centerRight,
                               colors: [
                                 Color(0xFF00A676),
                                 Color(0xFF05623C),
                               ]),
                         ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const Icon(Icons.bedroom_baby_outlined, color: Colors.white, size: 35,),
                             const SizedBox(height: 12,),
                             UiHelper.customText(
                                 text: "Accommodation",
                                 color: Colors.white,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w600),
                             UiHelper.customText(
                                 text: "View history",
                                 color: Colors.white,
                                 fontSize: 12,
                                 fontWeight: FontWeight.w400),

                           ],
                         ),
                       ),
                       Container(
                         padding: const EdgeInsets.all(10),
                         height: 200,
                         width: 160,
                         decoration:  BoxDecoration(
                           borderRadius: BorderRadius.circular(9),
                           gradient: const LinearGradient(
                               begin: Alignment.centerLeft,
                               end: Alignment.centerRight,
                               colors: [
                                 Color(0xFF00A676),
                                 Color(0xFF05623C),
                               ]),
                         ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const Icon(Icons.support_agent_sharp, color: Colors.white, size: 35,),
                             const SizedBox(height: 12,),
                             UiHelper.customText(
                                 text: "Support Service",
                                 color: Colors.white,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w600),
                             UiHelper.customText(
                                 text: "View history",
                                 color: Colors.white,
                                 fontSize: 12,
                                 fontWeight: FontWeight.w400),

                           ],
                         ),
                       ),
                     ],
                   )
          
          
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
