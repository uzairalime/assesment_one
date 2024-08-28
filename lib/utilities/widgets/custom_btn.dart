

import 'package:assesment_one/utilities/appcolors/appColors.dart';
import 'package:assesment_one/view/home_screen.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final text;
  const CustomBtn({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return const HomeScreen();
                    },));

                  },
                  child: Container(
                    width: width,
                    height: height*0.08,
                    alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppsCol().secondary,
                          
                        ),
                        child: Text(text, style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                  
                        ),),
                      ),
                );
  }
}