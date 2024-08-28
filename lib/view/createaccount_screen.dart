
import 'dart:developer';

import 'package:assesment_one/utilities/appcolors/appColors.dart';
import 'package:assesment_one/utilities/text/text.dart';
import 'package:assesment_one/utilities/widgets/custom_btn.dart';
import 'package:assesment_one/utilities/widgets/google_btn.dart';
import 'package:assesment_one/utilities/widgets/text_field_custom.dart';
import 'package:flutter/material.dart';

class CreateaccountScreen extends StatelessWidget {
  const CreateaccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width,
          color: Colors.black,
          child:  Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // create account text
                const Text("Create your Account",
                // textAlign: TextAlign.start,
                 style: largetext),
                 // label Full Name
                const Text("Full Name",style: labletext, ),
                // User name text fiel
                const TextFieldCustom(hintText: "User Name", icon: Icons.man, keyboardType: TextInputType.name,),
                const SizedBox(
                  height: 20,
                ),
                // email label
                const Text("Email Address",style: labletext, ),
                // email field
                const TextFieldCustom(hintText: "Enter your Email", icon: Icons.email, keyboardType: TextInputType.emailAddress,),
                const SizedBox(
                  height: 20,
                ),
                // Password label
                const Text("Password",style: labletext, ),
                // email field
                const TextFieldCustom(hintText: "Enter your Password", icon: Icons.lock, keyboardType: TextInputType.emailAddress,),
                // SizedBox(
                //   height: 20,
                // ),
                //--------------------------
                //new field
                //new field
                //---------------------------
                // policy
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text("I have read & agreed to DayTask Priversy Policy, Term & Contdition",style: smlabletext,),
                  leading: Checkbox.adaptive(value: true, onChanged: (value) {
                    log("checkbox");
                  },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomBtn(text: "Sign Up",),
                const SizedBox(
                  height: 10,
                ),
                
                Row(
                  children: [
                    const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: width*0.29,
                  child: const Divider(
                    color: Colors.white,
                  ),
                ),
                const Text("Or continue with", style: labletext,),
                SizedBox(
                  width: width*0.29,
                  child: const Divider(
                    color: Colors.white,
                  ),
                ),
                
                  ],

                ),
                // google btn
                const GoogleBtn(text: "Google",),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextButton(onPressed: () => log("text"), child: const Text("Already have an account? Log In", style: labletext,),))
                
                
                
                
            
            
                
            
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}