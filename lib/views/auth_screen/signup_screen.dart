import 'package:attic/consts/consts.dart';
import 'package:attic/controllers/auth_controller.dart';
import 'package:attic/views/home_screen/home.dart';
import 'package:get/get.dart';

import '../widgets_common/applogo_widget.dart';
import '../widgets_common/bg_widget.dart';
import '../widgets_common/custom_textfield.dart';
import '../widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck = false;
  var controller = Get.put(AuthController());

  //test controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController= TextEditingController();
  var passwordConfirmController = TextEditingController();

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
              customTextField(hint: nameHint, title: name, controller: nameController, isPass: false),
              customTextField(hint: emailHint, title: email, controller: emailController, isPass: false),
              customTextField(hint: passwordHint, title: password, controller: passwordController, isPass: true),
              customTextField(hint: passwordHint, title: confirmPassword, controller: passwordConfirmController, isPass: true),
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
                  ourButton(
                    color: isCheck == true? 
                    blueColor: lightGrey, 
                    title: signup, 
                    textColor: whiteColor, 
                    onPress: () async {
                      if(isCheck !=false){
                        try {
                          await controller.signupMethod(
                            context: context, email: emailController.text, password: passwordController.text)
                            .then((value) {
                              return controller.storeUserData(
                                email: emailController.text, password: passwordController.text, name: nameController.text);
                            } ).then((value) {
                              VxToast.show(context, msg: loggedin);
                              Get.offAll(() => const Home());
                                });
                        } catch (e) {
                          auth.signOut();
                          // ignore: use_build_context_synchronously
                          VxToast.show(context, msg: e.toString());
                        }
                      }
                    },
                    ).box.width( context.screenWidth - 50).make(),         
                  10.heightBox,
                  //wrapping into gesture detector of velocity X
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreadyHaveAccount.text.color(fontGrey).make(),
                      login.text.color(blueColor).make().onTap(() {
                        Get.back();
                      }),
                    ],
                  ),
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70 ).shadowSm.make()
          ],
        ),
      )
    ));
  }
}