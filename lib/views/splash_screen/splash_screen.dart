import 'package:attic/consts/consts.dart';
import 'package:attic/views/auth_screen/login_screen.dart';
import 'package:attic/views/home_screen/home.dart';
import 'package:attic/views/widgets_common/applogo_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

//creating a method to change screen

changeScreen() {
  Future.delayed(const Duration(seconds: 3), () {
    //using getX
   // Get.to(() => const LoginScreen());

   auth.authStateChanges().listen((User? user) {
    if(user == null && mounted) {
      Get.to(() => const LoginScreen());
    } else {
      Get.to (() => const Home());
    }
   });
  });
}

  @override 
  void initState() {
    changeScreen();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Image.asset(icSplashBg, width:300)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
            //Splash screen UI is completed
          ],
        ),
      ),
    );

  }
}