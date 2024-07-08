import 'package:attic/consts/consts.dart';
import 'package:attic/consts/lists.dart';
import 'package:attic/controllers/auth_controller.dart';
import 'package:attic/views/auth_screen/login_screen.dart';
import 'package:attic/views/profile_screen/components/details_card.dart';
import 'package:attic/views/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return bgWidget(
      child: Scaffold(
      body: SafeArea(
        child: Column(children: [
        
          //edit pofile button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Align(
              alignment: Alignment.topRight, child: Icon(Icons.edit, color: whiteColor)).onTap(() {}),
          ),
        
          //user details section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Image.asset(imgProfile2, width: 100, fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  "Dummy User".text.fontFamily(semibold).white.make(),
                  "darel12@gmail.com".text.white.size(12).make(),
                ],
                ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: whiteColor,
                    ),),
                  onPressed: () async{
                    await Get.put(AuthController()).signoutMethod(context);
                    Get.offAll(() => const LoginScreen());
                  }, 
                  child: "Logout".text.fontFamily(semibold).white.make())
              ],
            ),
          ),
        
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailsCard(count: "00", title: "in your cart", width: context.screenWidth / 3.4),
              detailsCard(count: "32", title: "in your wishlist", width: context.screenWidth / 3.4),
              detailsCard(count: "67", title: "your orders", width: context.screenWidth / 3.4),
            ],
          ),
        
          //buttons section
          
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const Divider(color: lightGrey);
            },
            itemCount: profileButtonsList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.asset(
                  profileButtonsIcon[index],
                  width: 22,),
                title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
              );
            }
          ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(blueColor).make(),
        
        ],
                ),
      ),
    ));
  }
}