import 'package:attic/consts/consts.dart';
import 'package:flutter/widgets.dart';

Widget detailsCard({width,String? count, String? title}) {
  return  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "00".text.white.fontFamily(bold).color(darkFontGrey).size(16).make(),
                5.heightBox,
                "in your cart".text.color(darkFontGrey).make(),
              ],
            ).box.white.rounded.width(width).height(70).padding(const EdgeInsets.all(4)).make();
  
}