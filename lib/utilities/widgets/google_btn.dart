import 'dart:developer';

import 'package:flutter/material.dart';

class GoogleBtn extends StatelessWidget {
  final text;
  const GoogleBtn({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return InkWell(
                  onTap: () => log("Google btn"),
                  child: Container(
                    width: width,
                    height: height*0.08,
                    alignment: Alignment.center,
                        decoration: BoxDecoration(
                          // color: AppsCol().secondary,
                          border: Border.all(color: Colors.white, width: 2)
                          
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.g_mobiledata, color: Colors.white,),
                            Text(text,
                             style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                                              
                            ),),
                          ],
                        ),
                      ),
                );
  }
}