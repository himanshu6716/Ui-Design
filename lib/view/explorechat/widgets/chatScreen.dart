import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 310,
            child:Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xff0A0A0A),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recent Chat',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xffFFFFFF),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/color3.png'),
                                fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(40.0)
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                const Icon(Icons.mark_email_unread_sharp,
                                  size: 15,
                                  color: Colors.black,),
                                const SizedBox(width: 5),
                                Text('Archive Chat',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,color: Colors.black),
                                  )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    ChatList()
                  ],
                ),
              ),
        ))
      ],
    );
  }
}
class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          _buildChatList(
              'assets/images/download.jpeg', 'Chat Boldwick', 'Sending the file right now','', '20 min ago',
              true),
          _buildChatList(
              'assets/images/download1.jpeg', 'Yuri Lorental', 'Can you confirm deadline?',
             '2', '15 min ago', true),
          _buildChatList(
              'assets/images/download2..jpg', 'Jung Taekwoon', 'Voice Message (0:23)',
             '', '10 min ago', true),
          _buildChatList(
              'assets/images/download.jpeg', 'Boss', 'Hello! How is the progress?',''
              '1', '5 min ago',
              true),
        ],
      );
  }
}
  Widget _buildChatList(
      String imagePath,
      String name,
      String subtitle,
      String totalmsg,
      String time,
      bool isActive){
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,right: 10,top: 30
      ),
      child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (isActive)
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 15,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.green, // Active status color
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white, // Border around the active indicator
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(width: 10), // Space between image and text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (totalmsg != null && totalmsg.isNotEmpty)
                    Container(
                      padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                    color: Colors.blue, // Active status color
                      shape: BoxShape.circle,),
                      child:Text(
                          totalmsg,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    Text(
                time,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400
                ),
              ),
            ]
          ),
            ]
      ),
    );
  }



