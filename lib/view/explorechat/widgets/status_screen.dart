import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 120,left: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online Members',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ]
          ),
        ),
        const SizedBox(height: 20,),
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: 16),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(height: 14),
              StoryWidget(),
              _buildStatusItem('assets/images/download.jpeg', 'Chad', true),
              _buildStatusItem('assets/images/download1.jpeg', 'Matt', true),
              _buildStatusItem('assets/images/download2..jpg', 'Joss', true),
              _buildStatusItem('assets/images/download.jpeg', 'Boss', true),
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildStatusItem(String imagePath, String name, bool isActive) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  ),
                ),
              Container(
                width: 60,
                height: 60,
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
          const SizedBox(height: 5), // Space between image and text
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              ),
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text('Story')
        ],
      ),
    );
  }
}


