import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:food_delivery_ui/colors_style.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      constraints: BoxConstraints(maxWidth: 1200.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                  icon: Icon(FontAwesome5Brands.twitter),
                  tooltip: 'Twitter',
                  color: BrandColors.colorPrimary,
                  onPressed: () {}),
              SizedBox(width: 10.0),
              IconButton(
                  icon: Icon(FontAwesome5Brands.facebook),
                  tooltip: 'Facebook',
                  color: BrandColors.colorPrimary,
                  onPressed: () {}),
              SizedBox(width: 10.0),
              IconButton(
                  icon: Icon(Zocial.instagram),
                  tooltip: 'Instagram',
                  color: BrandColors.colorPrimary,
                  onPressed: () {}),
            ],
          ),
          Text(
            '© 2022 Ludere Studios         ',
            style: TextStyle(
              fontSize: 12.0,
            ),
          )
        ],
      ),
    );
  }
}
