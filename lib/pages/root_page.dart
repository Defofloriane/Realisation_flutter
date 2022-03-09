import 'package:flutter/material.dart';
import 'package:krealisation/pages/home_page.dart';
import 'package:krealisation/pages/saved_page.dart';
import 'package:krealisation/theme/colors.dart';

import 'chat_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      floatingActionButton: getfloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: getBody(),
    );
  }

  Widget getFooter() {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 20,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(20),
        color: white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = 0;
                });
              },
              child: Icon(Icons.home,
                  size: 25, color: activeTab == 0 ? primary : black),
            ),
           
            GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = 1;
                });
              },
              child: Icon(Icons.chat_bubble_outline,
                  size: 25, color: activeTab == 1 ? primary : black),
            ),
            SizedBox(
              width: 40,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = 2;
                });
              },
              child: Icon(Icons.favorite,
                  size: 25, color: activeTab == 2 ? primary : black),
            ),
          
            GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = 3;
                });
              },
              child: Icon(Icons.account_circle,
                  size: 25, color: activeTab == 3 ? primary : black),
            ),
          ],
        ),
      ),
    );
  }

  Widget getfloatingButton() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.1),
          )
        ],
        color: black,
        borderRadius: BorderRadius.circular(23),
      ),
      child: Icon(Icons.add_circle_outline, color: Colors.white),
    );
  }
  Widget getBody() {
  //prkw retourner indexstart?

  return IndexedStack(
    index: activeTab,
    children: const [
      Homepage(),
      chatPage(),
      savedPage(),
       Center(child: Text("save"),
      ),
       Center(child: Text("profile"),
      ),
    ],
  );
}
}


