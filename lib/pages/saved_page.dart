import 'package:flutter/material.dart';
import 'package:krealisation/data/post.dart';

import 'package:krealisation/theme/colors.dart';

class savedPage extends StatefulWidget {
  const savedPage({Key? key}) : super(key: key);

  @override
  State<savedPage> createState() => _savedPageState();
}

class _savedPageState extends State<savedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Bar(),
        preferredSize: Size.fromHeight(60),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: blue,
    );
  }

  Widget Bar() {
    return Container(
      width: double.infinity,
      height: 43,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: blue.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 20,
          )
        ],
        borderRadius: BorderRadius.circular(20),
        color: white,
      ),
      child: getAppBar(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    SizedBox(
      height: 20,
    );
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "Saved",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
             Wrap(
               spacing: 4,
               children: List.generate(postsList.length, (index) {
                 return  Padding(
                padding: const EdgeInsets.only(left:25,),
                
                child: Column(
               
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Container(
                        width: (size.width-70)/2,
                        height: (size.width-70)/2,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: grey.withOpacity(0.15),
                              blurRadius: 2,
                              spreadRadius: 10,
                              offset: Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                                     image: NetworkImage(postsList[index]['postImg']), 
                                    fit: BoxFit.cover,
                        ),
                        ),
                    ),
                  ],
                ),
              );
               }
               ),
             ),
          
          ],
        ), 
      ),
    );
  }
}
