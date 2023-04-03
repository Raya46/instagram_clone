// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/constant.dart';
import 'package:instagram_clone/features/presentation/credentials/sign_in_page.dart';
import 'package:instagram_clone/features/presentation/widgets/button_container.dart';
import 'package:instagram_clone/features/presentation/widgets/form_container.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                flex: 2,
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        "assets/igtext.svg",
                        color: primaryColor,
                      ),
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100)),
                            width: MediaQuery.of(context).size.width / 4,
                            height: MediaQuery.of(context).size.height / 5,
                            child: Image.asset("assets/profile_default.png"),
                          ),
                          Positioned(
                            right: -3,
                            bottom: 20,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_a_photo,
                                size: 24.0,
                                color: blueColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))),
            Flexible(
                flex: 4,
                child: Column(
                  children: [
                    FormContainerWidget(
                      hintText: "Enter Your Username",
                    ),
                    Divider(
                      height: MediaQuery.of(context).size.height / 40,
                      color: transparant,
                    ),
                    FormContainerWidget(
                      hintText: "Enter Your Email",
                    ),
                    Divider(
                      height: MediaQuery.of(context).size.height / 40,
                      color: transparant,
                    ),
                    FormContainerWidget(
                      hintText: "Enter Your Password",
                      isPasswordField: true,
                    ),
                    Divider(
                      height: MediaQuery.of(context).size.height / 40,
                      color: transparant,
                    ),
                    FormContainerWidget(
                      hintText: "Enter Your Bio",
                    ),
                    Divider(
                      height: MediaQuery.of(context).size.height / 40,
                      color: transparant,
                    ),
                    ButtonContainerWidget(
                      color: blueColor,
                      text: "Sign Up",
                      onTapListener: () {},
                    ),
                    Flexible(flex: 2, child: Container()),
                    Divider(
                      color: secondaryColor,
                    ),
                    Flexible(
                        child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already Have An Account?",
                            style: TextStyle(color: primaryColor),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()),
                                );
                              },
                              child: Text(
                                " Sign In",
                                style: TextStyle(color: blueColor),
                              ))
                        ],
                      ),
                    ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
