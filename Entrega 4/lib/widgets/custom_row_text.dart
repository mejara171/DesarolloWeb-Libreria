import 'package:flutter/material.dart';
import 'package:food_delivery_ui/colors_style.dart';

class CustomRowText extends StatelessWidget {
  @required
  final String h4;
  @required
  final String h2;
  @required
  final String h3;

  final bool isRight;

  CustomRowText({
    this.h4,
    this.h2,
    this.h3,
    this.isRight: false,
  });

  @override
  Widget build(BuildContext context) {
    return isRight
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    h2,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: BrandColors.colorPrimary),
                  ),
                  Text(
                    h4,
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    h3,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                        color: BrandColors.colorSecondText),
                  ),
                ],
              ),
              Spacer(),
            ],
          )
        : Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    h2,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: BrandColors.colorPrimary),
                  ),
                  Text(
                    h4,
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    h3,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                        color: BrandColors.colorSecondText),
                  ),
                ],
              )
            ],
          );
  }
}
