import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
         Text("Messages",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),
         ),
         SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.only(right: 25),
           child: Container(
             width: double.infinity,
             height: 48,
             decoration: BoxDecoration(
               borderRadius: BorderRadius
               .circular(15),
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
                 SizedBox(width: 5,),
                 Container(
                   child: IconButton(
                     onPressed: (){},
                     icon: Icon(Icons.search,color: Colors.black,)),
                 ),
                 SizedBox(width: 5,),
                 Flexible(child: TextField(
                   cursorColor: black,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: "search for conctact"),
                 )),
                               ],
             ) 
           ),
         ),
        ],
        
      ),
    );
  }
}
