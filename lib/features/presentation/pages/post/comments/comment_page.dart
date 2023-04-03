// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:instagram_clone/constant.dart';
import 'package:instagram_clone/features/presentation/pages/profile/widget/edit_form_widget.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  bool isUserReplying = false;
  final FocusNode focusNode = FocusNode();
  TextEditingController _descriptionController = TextEditingController();
  _commentSection() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 15,
      color: Colors.grey[800],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
             Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 10,
                        child: Image.asset("assets/profile_default.png"),
                      ),
            // Container(child: ProfileFormWidget(), width: 50,),
            SizeHorizontal(10),
            Expanded(
                child: TextFormField(
              controller: _descriptionController,
              style: TextStyle(color: primaryColor),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Post your comment...",
                  hintStyle: TextStyle(color: secondaryColor)),
            )),
            GestureDetector(
                onTap: () {
                  // _createComment(currentUser);
                },
                child: Text(
                  "Post",
                  style: TextStyle(fontSize: 15, color: blueColor),
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text("Comments"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.message,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          child: Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 10,
                            decoration: BoxDecoration(
                                color: secondaryColor, shape: BoxShape.circle),
                          ),
                          SizeHorizontal(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Username",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("description"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: darkGreyColor,
                ),
                Expanded(
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
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: secondaryColor,
                                      shape: BoxShape.circle),
                                  width: MediaQuery.of(context).size.width / 10,
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                ),
                              ],
                            ),
                            SizeHorizontal(10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(),
                                Row(
                                  children: [
                                    Text("username"),
                                    SizeHorizontal(10),
                                    Text("27m",
                                        style: TextStyle(color: darkGreyColor)),
                                  ],
                                ),
                                SizeVertical(5),
                                Text("comments"),
                                SizeVertical(5),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isUserReplying = !isUserReplying;
                                    });
                                    print(isUserReplying);
                                  },
                                  child: Text(
                                    "reply",
                                    style: TextStyle(color: darkGreyColor),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Divider(),
                            const Icon(
                              Icons.favorite_border,
                              size: 18.0,
                            ),
                            Text(
                              "1",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                _commentSection()
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
