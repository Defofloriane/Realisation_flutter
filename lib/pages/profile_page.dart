import 'package:flutter/material.dart';
import 'package:krealisation/data/post.dart';
import 'package:krealisation/data/user.dart';
import 'package:krealisation/data/video.dart';
import 'package:krealisation/theme/colors.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  bool isphoto = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: Size.fromHeight(160),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: blue,
      flexibleSpace: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: black),
                  image: DecorationImage(
                      image: NetworkImage(postsList[1]['img']),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Flore",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Text(
                  "flore@gmail.com",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: black.withOpacity(0.15)),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    SizedBox(
      height: 20,
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Posts",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: black.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "15",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Followers",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: black.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "35",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "follows",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: black.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "135",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      isphoto = true;
                    });
                  },
                  icon: Icon(
                    Icons.photo,
                    size: 35,
                    color: isphoto ? primary : black,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isphoto = false;
                    });
                  },
                  icon: Icon(
                    Icons.video_collection_outlined,
                    size: 35,
                    color: !isphoto ? primary : black,
                  ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          isphoto
              ? Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: List.generate(4, (index) {
                    return Container(
                      width: (size.width - 60) / 2,
                      height: (size.width - 60) / 2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(postsList[index]['img']),
                              fit: BoxFit.cover)),
                    );
                  }),
                )
              : Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: List.generate(4, (index) {
                    return GestureDetector(
                      onTap: () {
                        playVideo(context,meVideoList[index]['videoUrl']);
                      },
                      child: Container(
                        width: (size.width - 60) / 2,
                        height: (size.width - 60) / 2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(meVideoList[index]['img']),
                                fit: BoxFit.cover)),
                        child: Center(
                          child: Icon(
                            Icons.play_circle,
                            size: 40,
                            color: white,
                          ),
                        ),
                      ),
                    );
                  }),
                )
        ],
      ),
    );
  }

  void playVideo(BuildContext context,videoUrl) {}
}
