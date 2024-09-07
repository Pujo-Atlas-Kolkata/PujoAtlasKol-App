import 'package:flutter/material.dart';
import 'package:mobile/components/custom_image.dart';
// ignore_for_file: must_be_immutable
class ProtoItem extends StatelessWidget {
  ProtoItem(this.imageUrl, {Key? key})
      : super(
          key: key,
        );
  
  String imageUrl = '';
  @override
  Widget build(BuildContext context) {
    String url = 'assets/images/${imageUrl.toLowerCase()}_icon.svg';

    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Color(0xFF625B71)
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: url,
                  height: 24,
                  width: 24,
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Text(
            imageUrl,
            style: TextStyle(
          color: Color(0xFFFFFFFF).withOpacity(0.7),
          fontSize: 12,
          fontFamily: 'Roboto',
        ),
          ),
        ],
      ),
    );
  }
}
