// ignore: unused_import
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:krealisation/data/post.dart';
import 'package:krealisation/data/user.dart';
import 'package:krealisation/theme/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: Size.fromHeight(60),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 3.4,
      backgroundColor: blue,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("social page"),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.format_list_bulleted_outlined,
                  color: Colors.black,
                ))
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return Padding(
      padding:  EdgeInsets.all(23),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text("Feed",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [Color(0xFFFFE0DF),Color(0xFd11A0A0)])
                      ),
                     child:Icon(Icons.add,color: Colors.black,),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    
                    children: List.generate(usersList.length, (index) {
                          return  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              
                               width: 50,
                               height: 50,
                               decoration:  BoxDecoration(
                               shape: BoxShape.circle,
                                image: DecorationImage(
                                   image: NetworkImage(usersList[index]['img']), 
                                  fit: BoxFit.cover,
                     ),
                   ),
                  ),
                           );
                  
                }),
                ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children:List.generate(postsList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Stack(
                    children: [
                      Container(
                      child: Column(
           
                   children: [
                     Container(
                       width: double.infinity,
                       height:200,
                       decoration:  BoxDecoration(boxShadow: [BoxShadow(color: grey.withOpacity(0.5),
                       spreadRadius: 2,
                       blurRadius: 15,
                       offset: Offset(0, 1),
                       ),
                       ],
                        image: DecorationImage(
                                      image: NetworkImage(postsList[index]['postImg']),
                                      fit:BoxFit.cover),
                                      borderRadius: BorderRadius.circular(20),


                       ),
                     
                     ),
                  
                   ],
                  
           
              ),
              
            ),
         
                   
               Container(
                      width: double.infinity,
                       height:200,
                       color: black.withOpacity(0.25),
                      
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Row(
                                     children: [CircleAvatar(backgroundImage: NetworkImage(postsList[index]['img']),
                                     ),
                                   
                                   
                                   SizedBox(height: 15,),
                                   Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Text(postsList[index]['name'], style: TextStyle(fontSize: 12, color: white)),
                                         SizedBox(height: 3,),
                                       Text(postsList[index]['time'], style: TextStyle(fontSize: 12, color: white)),
                                     ],
                                   ),
                                       
                                 ],
                                   ), 
                                    Icon(Icons.manage_search_sharp), 

                                 
                               ]
                               ),

                               
                             ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Container(
                                          width: 70,
                                          height:27,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xFFFFFFFF).withOpacity(0.5),

                                          ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                            Icon(
                                              Icons.favorite_border,
                                              color: white,
                                              size: 14,
                                            ),
                                            Text(postsList[0]['like'],style: TextStyle(fontSize:13,color:white),)
                                          ]
                                          ),
                                        ),   
                                          
                                        ),
                                           Container(
                                          width: 70,
                                          height:27,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xFFFFFFFF).withOpacity(0.5)
                                          ),
                                           child: Padding(
                                             padding: const EdgeInsets.all(8.0),
                                             child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                          Icon(
                                              Icons.share,
                                              color: white,
                                              size: 14,
                                          ),
                                          Text(postsList[0]['share'],style: TextStyle(fontSize:13,color:white),)
                                        ]
                                        ),
                                           ),
                                        ),
                                           Container(
                                          width: 70,
                                          height:27,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xFFFFFFFF).withOpacity(0.5)
                                          ),
                                           child: Padding(
                                             padding: const EdgeInsets.all(8.0),
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                          children: [
                                          Icon(
                                              Icons.chat_bubble_outline,
                                              color: white,
                                              size: 14,
                                          ),
                                          Text(postsList[0]['comment'],style: TextStyle(fontSize:13,color:white),)
                                        ]
                                        ),
                                           ),
                                        ),
                                    ],
                                  ) 
                           ],
                         ),
                       ),
                     )
             ],
           ),
                ) ;
              },

              
            ),
            ),
           
            
            
          ],
         
        ),
      ),
    );
  }
}
