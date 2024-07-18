import 'package:attic/consts/consts.dart';

Widget detailsCard({width,String? count, String? title}) {
  return  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                count!.text.white.fontFamily(bold).color(darkFontGrey).size(16).make(),
                5.heightBox,
                title!.text.color(darkFontGrey).make(),
              ],
            ).box.white.rounded.width(width).height(57).padding(const EdgeInsets.all(4)).make();
  
}