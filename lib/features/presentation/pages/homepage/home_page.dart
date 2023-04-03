// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/constant.dart';
import 'package:instagram_clone/features/presentation/pages/post/comments/comment_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor,
          title: SvgPicture.asset(
            "assets/igtext.svg",
            color: primaryColor,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 10.0,
              ),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CommentPage()),
                    );
                  },
                  child: Icon(Icons.messenger)),
            )
          ],
        ),
        body: Container(
          color: bgColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  height: MediaQuery.of(context).size.height / 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 10,
                            decoration: BoxDecoration(
                                color: primaryColor, shape: BoxShape.circle),
                          ),
                          VerticalDivider(
                            color: transparant,
                          ),
                          Text("Username"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.3,
                    color: secondaryColor,
                  )),
              SizeVertical(10),
              Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          SizeHorizontal(10),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CommentPage()),
                                );
                              },
                              child: Icon(Icons.message)),
                          SizeHorizontal(10),
                          Icon(Icons.airplane_ticket),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.bookmark_border),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizeVertical(10),
              Flexible(
                  child: Container(
                margin: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [Text("15.558 likes",)],
                    ),
                    SizeVertical(10),
                    Row(
                      children: [Text("javierstoy ", style: TextStyle(fontWeight: FontWeight.bold)), Text("Perbincangan")],
                    ),
                    SizeVertical(10),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CommentPage()),
                            );
                          },
                          child: Text(
                            "View 608 all comments",
                            style: TextStyle(color: secondaryColor),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
