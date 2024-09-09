import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/view/explorechat/widgets/chatScreen.dart';
import 'package:ui/view/explorechat/widgets/status_screen.dart';

class ExploreChat extends StatefulWidget {
  const ExploreChat({super.key});

  @override
  State<ExploreChat> createState() => _ExploreChatState();
}

class _ExploreChatState extends State<ExploreChat> {

  bool isEmailActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildProfile( isEmailActive),
          StatusScreen(),
          const Chatscreen(),
        ],
      ),
    );
  }
}
Widget _buildProfile(bool isEmailActive) {
  return Stack(
    children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Stack(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/images.png'),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Welcome Jamie!',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Explore Tasks',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    const Icon(
                          Icons.email_outlined,
                          size: 25,
                          color: Colors.black,
                       ),

                    if (isEmailActive)
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.blue, // Active indicator color for email
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
           ],
         ),
    ],
      );
}
