import 'package:attic/consts/consts.dart';
import 'package:attic/views/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
// Import the generated file
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AtticApp(),
    );
  }
}

class AtticApp extends StatelessWidget {
  const AtticApp({super.key});

  @override
  Widget build(BuildContext context) {
    //we are using getX so have change this material app into getmaterialapp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attic',
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.transparent,
        appBarTheme: const AppBarTheme(
          //to set app bar icons color
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
          // set elvation to 0
          elevation: 0.0,
          backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
  
