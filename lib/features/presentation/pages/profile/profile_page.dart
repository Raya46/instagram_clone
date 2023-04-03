import 'package:flutter/material.dart';
import 'package:instagram_clone/constant.dart';
import 'package:instagram_clone/features/presentation/credentials/sign_in_page.dart';
import 'package:instagram_clone/features/presentation/pages/profile/edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  _openBottomModalSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            height: 150,
            // decoration: BoxDecoration(color: bgColor.withOpacity(.8)),
            decoration: BoxDecoration(
                // color: bgColor.withOpacity(.8),
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0))),
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizeVertical(12),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.settings,
                            size: 24.0,
                          ),
                          SizeHorizontal(12),
                          Text(
                            "More Options",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: primaryColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.pushNamed(context, PageConst.editProfilePage,
                          //     arguments: widget.currentUser);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfilePage()));
                        },
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EditProfilePage()),
                            );
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.account_circle,
                                size: 24.0,
                              ),
                              SizeHorizontal(12),
                              Text(
                                "Edit Profile",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: primaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizeVertical(14),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        onTap: () {
                          // BlocProvider.of<AuthCubit>(context).loggedOut();
                          // Navigator.pushNamedAndRemoveUntil(
                          //     context, PageConst.signInPage, (route) => false);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()),
                          );
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.logout,
                              size: 24.0,
                            ),
                            SizeHorizontal(12),
                            Text(
                              "Logout",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizeVertical(7),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("o.briennc"),
            Container(
              margin: const EdgeInsets.only(
                top: 10.0,
              ),
              child: const Icon(
                Icons.arrow_drop_down,
                size: 12.0,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 10.0,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.add_box_outlined,
                  size: 32.0,
                ),
                SizeHorizontal(20),
                GestureDetector(
                  onTap: () {
                    _openBottomModalSheet(context);
                  },
                  child: Icon(
                    Icons.menu,
                    size: 32.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            SizeVertical(10),
            Container(
              height: MediaQuery.of(context).size.height / 6.5,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        width: MediaQuery.of(context).size.width / 5,
                        height: MediaQuery.of(context).size.height / 10,
                        child: Image.asset("assets/profile_default.png"),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("0"),
                              Text("Posts"),
                            ],
                          ),
                          SizeHorizontal(30),
                          Column(
                            children: [
                              Text("0"),
                              Text("Followers"),
                            ],
                          ),
                          SizeHorizontal(30),
                          Column(
                            children: [
                              Text("0"),
                              Text("Following"),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 19.0, top: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("name"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("bio"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 6.0,
                right: 6.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: but,
                      ),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfilePage()),
                        );
                      },
                      child: const Text("Edit Profile"),
                    ),
                  ),
                  SizeHorizontal(5),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: but,
                      ),
                      onPressed: () {},
                      child: const Text("Share Profile"),
                    ),
                  ),
                ],
              ),
            ),
            SizeVertical(10),
            Container(
              margin: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Story Highlights"),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 24.0,
                  ),
                ],
              ),
            ),
            SizeVertical(10),
            Container(
              // height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  GridView.builder(
                    itemCount: 32,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        color: secondaryColor,
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
