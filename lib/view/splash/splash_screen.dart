import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/route/app_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0A0A),
      body: Stack(
        children: [
          _buildUpperpattern(),
          _buildMeduimPattern(),
          _buildLeftMeduimPattern(),
          _buildLowerPattern(),
          _buildText(),
          _buildButton()
        ],
      ),
    );
  }
}

Widget _buildUpperpattern(){
  return Stack(
    children: [
      Positioned(
        top: 0,
        left: 30,
        child: Container(
          height: 230,
          width: 150,
          decoration: const BoxDecoration(
            color: Color(0xffFEBD93),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
          child: Stack(
              children: [
                Positioned(
                  top: 90,
                  left: 18,
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: const BoxDecoration(
                      color:  Color(0xff0A0A0A),
                      shape: BoxShape.circle
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    ],
  );
}

Widget _buildMeduimPattern(){
  return Positioned(
        top: 80,
          left: 200,
          child:Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                )
              ),
               child: Image.asset(
                 'assets/images/color3.png',
                 height: 160,
                 width: 170,
                 fit: BoxFit.contain,
               ),
          ),
  );
}

Widget _buildLeftMeduimPattern(){
  return Positioned(
      top: 230,
      left:0,
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              )
             ),
          child: Image.asset(
            'assets/images/Color1.png',
            height: 150,
            width: 250,
            fit:BoxFit.contain,
          ),
        ),
  );
}

Widget _buildLowerPattern(){
  return Positioned(
      top: 370,
      left: 80,
    child: Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          )
      ),
      child: Image.asset(
        'assets/images/color2.png',
        height: 150,
        width: 300,
        fit: BoxFit.contain,
      ),
    ),
  );
}

Widget _buildText(){
  return Positioned(
    top: 530,
    left: 30,
      child:Image.asset(
        'assets/images/text.png',
        height: 180,
        width: 230,
        fit: BoxFit.contain,
      ),
  );
}
Widget _buildButton(){
  return  Stack(
    alignment: Alignment.center,
    children: [
    Positioned(
      top: 710,
      left: 220,
      child: GestureDetector(
        onTap: (){
          Get.toNamed(Routes.home);
        },
        child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(40),
          image: const DecorationImage(
            image: AssetImage('assets/images/color3.png'),
            fit: BoxFit.cover,
          ),
        ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Start',
                style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0A0A0A
                  ),
                ),
              ),
              SizedBox(width: 8,),
              Icon(Icons.arrow_forward,size: 20,color: Colors.black,)
            ],
          ),
          ),
      ),
    ),
  ]
  );
}


