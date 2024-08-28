import 'package:assesment_one/utilities/appcolors/appColors.dart';
import 'package:assesment_one/utilities/text/text.dart';
import 'package:assesment_one/utilities/widgets/search_field_custom.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        
        body: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // search field
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width*0.8,
                      child: const SearchFieldCustom(hintText: "Search tasks", icon: Icons.search, )),
                    Container(
                      width: width*0.15,
                      height: height*0.09,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppsCol().secondary,
            
                      ),
                      child: const Icon(Icons.filter_1),
                    )
            
                  ],
                ),
                // task
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Completed Tasks", style: mdwhitetext,),
                    Text("see all", style: smyellowtext,)

                  ],
                ),
                SizedBox(
                  height: height*0.25,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                  width: width*0.5,
                  // height: height*0.25,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppsCol().primary,
                  ),
                  child: const Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Real Estate Website Design", style: mdwhitetext,),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Team members", style: smwhitetext,),
                          Text("100%", style: smwhitetext,),
                          
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      
                      LinearProgressIndicator(
                        color: Colors.white,
                        value: 50,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        minHeight: 8,
                      )
                      

                    ],
                  ),
                );
                  },),
                )
              ],
            ),
          ),
        )

        
      )
    );
  }
}