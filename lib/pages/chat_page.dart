import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:krealisation/data/post.dart';
import 'package:krealisation/data/user.dart';
import 'package:krealisation/theme/colors.dart';

class chatPage extends StatefulWidget {
  const chatPage({Key? key}) : super(key: key);

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
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
      elevation: 0,
      backgroundColor: white,
    );
  }

  getBody() {
    return Padding(
        padding: const EdgeInsets.only(left: 25,right: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Messages",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 15,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                          child: TextField(
                        cursorColor: black,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "search for conctact"),
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(usersList.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                 
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: grey.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 2,
                              offset: Offset(0, 1),
                            )
                          ],
                          color: white.withOpacity(0.5),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: black),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            usersList[index]['img']),
                                        fit: BoxFit.cover))),
                            SizedBox(
                              width: 12,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(postsList[index]['name'],
                                      style:
                                          TextStyle(fontSize: 12, color: black)),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(usersList[index]['message'],
                                      style:
                                          TextStyle(fontSize: 12, color: black)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                   
                  );
                }),
              ),
            ],
          ),
        ),
        );
  }
}
