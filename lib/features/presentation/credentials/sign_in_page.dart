// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/constant.dart';
import 'package:instagram_clone/features/presentation/credentials/sign_up_page.dart';
import 'package:instagram_clone/features/presentation/main_screen/main_screen.dart';
import 'package:instagram_clone/features/presentation/widgets/button_container.dart';
import 'package:instagram_clone/features/presentation/widgets/form_container.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                flex: 3,
                child: Container(
                  child: Center(child: SvgPicture.asset("assets/igtext.svg", color: primaryColor,),)
                )),
            Flexible(
                flex: 3,
                child: Container(
                  child: Column(
                    children: [
                      FormContainerWidget(
                        hintText: "Email",
                      ),
                      Divider(
                        height: MediaQuery.of(context).size.height / 40,
                        color: transparant,
                      ),
                      FormContainerWidget(
                        hintText: "Password",
                        isPasswordField: true,
                      ),
                      Divider(
                        height: MediaQuery.of(context).size.height / 40,
                        color: transparant,
                      ),
                      ButtonContainerWidget(
                        color: blueColor,
                        text: "Sign In",
                        onTapListener: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                          );
                        },
                      )
                    ],
                  ),
                )),
            Flexible(flex: 2, child: Container()),
            Divider(
              color: secondaryColor,
            ),
            Flexible(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already Have An Account?", style: TextStyle(color: primaryColor),),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(" Sign Up", style: TextStyle(color: blueColor),))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
