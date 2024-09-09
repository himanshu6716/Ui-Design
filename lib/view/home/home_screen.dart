import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/route/app_page.dart';
import 'package:ui/view/home/widget/celender.dart';
import 'package:ui/view/home/widget/task.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool isEmailActive = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0A0A),
      body: Stack(
        children: [
          _buildProfile(isEmailActive),
          CelenderScreen(),
          TaskScreen()
        ],
      ),
      floatingActionButton :Stack(
        alignment: Alignment.center,
        children: [
        Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      
      FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: (){
          Get.toNamed(Routes.explore);
        },
        child: const Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      ]
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 20,),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.network_cell,size: 20,),
            label: 'Network',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications,size: 20,),
            label: 'Notification',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings,size: 20,),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xff6373F7),
        unselectedItemColor: const Color(0xffD2D2D2),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
    );
  }
}
Widget _buildProfile(bool isEmailActive) {
  return Stack(
    children: [
      Positioned(
        top: 45,
        right: 30,
        left: 20,
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
                          color: Colors.white
                              ),
                            ),
                            Text(
                              'Explore Tasks',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
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
                          color: Colors.white,
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
              Positioned(
                top: 120,
                left: 20,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: const CircularProgressIndicator(
                                    value: 0.7, // 70% progress
                                    strokeWidth: 6.0, // Thickness of the progress indicator
                                    backgroundColor: Colors.grey, // Background color
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green), // Progress color
                                  ),
                                ),
                                CircleAvatar(
                                  minRadius: 30,
                                  backgroundColor: const Color(0xff1D1D1D),
                                  child: Text(
                                    '70%',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Task\nCompleted',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 50),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/calendar.png',
                                height: 16,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'Mar 22',
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
      );
   }




