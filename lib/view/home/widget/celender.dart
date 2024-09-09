import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CelenderScreen extends StatelessWidget {
  const CelenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> calendarData = [
      {"day": "Mon", "date": "12"},
      {"day": "Tue", "date": "13"},
      {"day": "Wed", "date": "14"},
      {"day": "Thu", "date": "15"},
      {"day": "Fri", "date": "16"},
      {"day": "Sat", "date": "17"},
      {"day": "Sun", "date": "18"},
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom:200 ),
      child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: calendarData.length,
            itemBuilder: (context, index) {
              final day = calendarData[index]["day"]!;
              final date = calendarData[index]["date"]!;
              return Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      height: 100,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff333333),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            date,
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            day,
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
      ),
    );
  }
}
