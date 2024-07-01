import 'package:attic/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets_common/applogo_widget.dart';
import 'widgets_common/bg_widget.dart';
import 'widgets_common/custom_textfield.dart';
import 'widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck = false;

 @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(child: Column(children: [(context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "Join $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(hint: nameHint, title: name),
              customTextField(hint: emailHint, title: email),
              customTextField(hint: passwordHint, title: password),
              customTextField(hint: passwordHint, title: confirmPassword),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                5.heightBox,

                  Row(
                    children: [
                      Checkbox(
                        activeColor: blueColor, checkColor: whiteColor ,value: isCheck, onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                          },
                        ),
                        10.widthBox,
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "I agree to the ",
                                  style: TextStyle(color: fontGrey, fontFamily: regular)),
                                  TextSpan(
                                  text: termAndcond,
                                  style: TextStyle(color: blueColor, fontFamily: regular)),
                                   TextSpan(
                                  text: " & ",
                                  style: TextStyle(color: fontGrey, fontFamily: regular)),
                                   TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(color: blueColor, fontFamily: regular)),
                              ],
                              
                            ),
                          
                            ),
                        ),
                    ],
                  ),  
                  5.heightBox,
                  ourButton(color: isCheck == true? blueColor: lightGrey, title: signup, textColor: whiteColor, onPress: () {})
                  .box
                  .width( context.screenWidth - 50)
                  .make(),         
                  10.heightBox,
                  //wrapping into gesture detector of velocity X
                  RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyHaveAccount,
                        style: TextStyle(fontFamily: bold, color: fontGrey),
                      ),
                       TextSpan(
                        text: login,
                        style: TextStyle(fontFamily: bold, color: blueColor),
                      )
                    ],
                  ),
                ).onTap(() {
                  Get.back();
                }),
              ],
          ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70 ).shadowSm.make()
          ],
          ),
          )
        ));
  }
}