// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:assesment_one/utilities/appcolors/appColors.dart';
import 'package:assesment_one/utilities/text/text.dart';

class SearchFieldCustom extends StatelessWidget {
  final String hintText;
  final IconData icon;
  // final TextInputType? keyboardType;
  
  const SearchFieldCustom({
    Key? key,
    required this.hintText,
    required this.icon,
    // required this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
                width: width,
                height: height*0.09,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: EdgeInsetsDirectional.symmetric(horizontal: 0, vertical: 10),
                decoration: BoxDecoration(
                  color: AppsCol().primary,
                ),
                child: TextFormField(
                  // keyboardType: keyboardType, 
                  decoration: InputDecoration(
                    // label: Text("data"),
                    hintText: hintText,
                    hintStyle: searchtext,
                    prefixIcon: Icon(icon),
                    prefixIconColor:Color.fromRGBO(111, 135, 147, 1),
                    
                    // fillColor: AppsCol().primary,
                    
                          
                  ),
                ),
              );
  }
}
