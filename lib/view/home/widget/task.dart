import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/view/home/widget/overlapping.dart';
class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 350,
          child: Container(
            padding: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.width * 03,
            width: MediaQuery.of(context).size.width ,
            decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
              )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Your Tasks ',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,color: Colors.black),
                        ),
                        Text('(7/10) Completed',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color(0xff0A0A0A),
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 30,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)
                            ),
                              child: Text(
                                'Left',
                                style: GoogleFonts.plusJakartaSans(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          const SizedBox(width: 8,),
                          Text(
                            'Done',
                            style: GoogleFonts.plusJakartaSans(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      )
                    )
                  ],
                ),
                const chatView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
class chatView extends StatelessWidget {
  const chatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const SizedBox(height: 30,),
              _buildChatAppliction(),
              const SizedBox(height: 30,),
                _buildWebSite()
        ],
    );
  }
}

Widget _buildChatAppliction(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(
      children: [
        Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: const CircularProgressIndicator(
              value: 0.7, // 70% progress
              strokeWidth: 6.0, // Thickness of the progress indicator
              backgroundColor: Colors.white, // Background color
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff6373F7)), // Progress color
            ),
          ),
          CircleAvatar(
            minRadius: 25,
            backgroundColor: Colors.white,
            child: Text(
              '70%',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          ]
          ),
        const SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Chat Application',
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffFF6B6B),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(3),
                ),
                const SizedBox(width: 3,),
                Text('Over due',style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffFF6B6B),
                ),
                ),
                Text(' , Mar 13, 2022',style: GoogleFonts.plusJakartaSans(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey ,
                ),
                ),
              ],
            )
          ],
        ),
        SizedBox(width: 20,),
        Overlapping()
      ],
    ),
    ],
  );
}
Widget _buildWebSite(){
  return Column(
    children: [
      Row(
        children: [
          Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const CircularProgressIndicator(
                    value: 0.8, // 80% progress
                    strokeWidth: 6.0, // Thickness of the progress indicator
                    backgroundColor: Colors.white, // Background color
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xffFEBD93),
                    ), // Progress color
                  ),
                ),
                CircleAvatar(
                  minRadius: 25,
                  backgroundColor: Colors.white,
                  child: Text(
                    '80%',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ]
          ),
          const SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('NFT Website',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffFFC83F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(4),
                  ),
                  const SizedBox(width: 3,),
                  Text('Scheduled',style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffFFC83F),
                  ),
                  ),
                  Text(' , Mar 16, 2022',style: GoogleFonts.plusJakartaSans(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey ,
                  ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(width: 30,),
          Overlapping2()

        ],
      )
    ],
  );
}
