import 'package:flutter/material.dart';
import 'package:food_delivery_ui/widgets/custom_row_button.dart';
import 'package:food_delivery_ui/widgets/custom_row_content.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 150.0),
                Text(
                  'Making coooooool\nstuff',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 58.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),
                Text(
                  'since 2022',
                  style: TextStyle(
                    color: Color.fromARGB(255, 10, 10, 22),
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 200.0),
                Container(
                  height: 1.0,
                  width: MediaQuery.of(context).size.width * 0.65,
                  color: Color.fromARGB(0, 228, 228, 228),
                ),
                SizedBox(height: 40.0),
                Text(
                  'Our latest game: Bee Corp',
                  style: TextStyle(
                    fontSize: 44.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                CustomRowContent(
                  imagePath: 'assets/images/SunGlasses.png',
                  h2: 'Produce Honey',
                  h3: '',
                  h4: 'Start your own bee farm',
                ),
                CustomRowContent(
                  isRight: true,
                  imagePath: 'assets/images/building.png',
                  h2: 'Upgrade your buildings',
                  h3: '',
                  h4: 'Make your bees work faster',
                ),
                CustomRowContent(
                  imagePath: 'assets/images/FrisbeeHat2.png',
                  h2: 'Gain new skins',
                  h3: '',
                  h4: 'Make your bees look cooler',
                ),
                Container(
                  height: 509.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Download the app",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'Soon',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 55.0),
                        CustomRowButton(),
                      ],
                    ),
                  ),
                ),
                //Footer()
              ],
            ),
          ),
        )
      ],
    );
  }
}
