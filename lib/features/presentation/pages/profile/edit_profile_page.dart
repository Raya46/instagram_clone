// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:instagram_clone/constant.dart';
import 'package:instagram_clone/features/presentation/pages/profile/widget/edit_form_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close)),
        title: const Text("Edit Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.done,
              color: blueColor,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        SizeVertical(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              width: MediaQuery.of(context).size.width / 5,
                              height: MediaQuery.of(context).size.height / 10,
                              child: Image.asset("assets/profile_default.png"),
                            ),
                            SizeHorizontal(20),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              width: MediaQuery.of(context).size.width / 5,
                              height: MediaQuery.of(context).size.height / 10,
                              child: Image.asset("assets/profile_default.png"),
                            ),
                          ],
                        ),
                        SizeVertical(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Edit picture or avatar",
                              style: TextStyle(color: blueColor),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              Flexible(
                  flex: 4,
                  child: Column(
                    children: [
                      ProfileFormWidget(
                        title: "Name",
                      ),
                      ProfileFormWidget(
                        title: "Username",
                      ),
                      ProfileFormWidget(
                        title: "Pronouns",
                      ),
                      ProfileFormWidget(
                        title: "Bio",
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
