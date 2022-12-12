import 'package:flutter/material.dart';
import 'package:food_delivery_ui/model/appdata_model.dart';
import 'package:food_delivery_ui/pages/components/home_item.dart';
import 'package:food_delivery_ui/pages/components/navbar.dart';
import 'package:provider/provider.dart';

import 'components/footer.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              FutureBuilder(builder: (context, snapshot) {
                return Column(
                  children: getContent(_getCurrentIndex()),
                );
              }),
              Footer(),
            ],
          ),
        ));
  }

  _getCurrentIndex() {
    var index = Provider.of<AppDataModel>(context).getCurrentIndex;
    return index;
  }

  List<Widget> getContent(index) {
    return [
      [
        Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 3.5,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'Ludere Studios takes the privacy of our players very seriously. We make an effort to only collect the data we need to operate our games and our business. This document explains clearly how we collect, store and share information (if any) that we collect in our games or through customer service provided for our games. Should you have any questions about your data please feel free to contact us at luderestudiosdev@gmail.com.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "Acceptance of Terms",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'By using our games and the services they provide, you accept the policies laid out in this document. Additionally you acknowledge and consent that we will collect, process, store, and share data and explained in this document. If you do not consent you can simply not play our games or use our services. Much of the data collection and processing we do can be disabled in the settings for our apps, but some data collection is necessary to prevent fraud and ensure proper operation of our apps.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "Updates",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'We are constantly adding features and auditing our Privacy Practices. As such this document is likely to change over time. By continuing to play our game and use our services your acceptance of these updates is implied. What or Who is Ludere Studios? Ludere Studios ("Ludere Studios", "we", "us", or "our") is a game developer and corporation located in Medellín, Colombia. To use EU GDPR regulation language, we are the "controller" of any personal information we collect. (Personal information is defined below)'
                          'Our customer service team is versed in your data privacy rights, and are supported by a data privacy manager should you have any concerns or wish to carry out any actions on your data. Contact us at:'
                          '\n'
                          ' Email:  luderestudiosdev@gmail.com',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "What Data Do We Collect? And Why?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'Information You Provide:'
                          '\n'
                          'Ludere Studios collects minimal information you provide. To access some features you will be asked to give yourself or a team you are playing on a name and we collect that information. If you request customer service, any information you send to us will be logged in our customer support system.'
                          '\n'
                          '\n'
                          'Information We Collect Automatically:'
                          '\n'
                          'The majority of the information we collect is automatic and based on your usage of our apps and services. This namely consists of:'
                          '\n'
                          '\n Your game data for backup / restore, customer service, and for certain features to function.'
                          '\n Analytics, information about what you do in the game, to help use improve the game.'
                          '\n Information about what you purchase in the game for business purposes, and fraud prevention.'
                          '\n Device information and identifiers. We collect this information to attribute installs driven by ads shown in our games, to track the performance of our ads used to acquire new users, and to attribute actions of those acquired users to ad campaigns.'
                          '\n'
                          '\n'
                          'Information From Third Parties:'
                          '\n'
                          'Ludere Studios collects personal identifiers such as your username and player ID from Game Center or Google Play Games ("Game Services") you have authorized us to use on your device. We do this to enable features in the game based on your unique gamer identity, such as save game backup and recovery, team play, customer service, and more.'
                          '\n'
                          '\n'
                          'Information We DO NOT Collect:'
                          '\n'
                          'Ludere Studios'
                          '\n'
                          '\n DOES NOT collect information on your location'
                          '\n DOES NOT collect or store your email (except if you contract customer service via email), phone number, address, or any other sensitive personal information'
                          '\n DOES NOT collect information about your age, gender, ethnicity, sexual orientation, or any heath related information'
                          '\n DOES NOT collect your real name (unless it is the same as your username for the above mentioned Game Services. But we do not know if it is your real name)'
                          '\n DOES NOT collect biometric information '
                          '\n DOES NOT collect internet, search, network activity information'
                          '\n DOES NOT collect sensor data, camera, audio, temperature, etc'
                          '\n DOES NOT collect Professional or education status',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "How Do We Collect & Store Data?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'The data we collect comes from our games and our customer service operations. It is transmitted over the web, (securely if sensitive), and then stored in world class managed data-centers located in the United States.'
                          '\n If your data being transmitted to or through the United States is not allowed where you live, DO NOT use our app or services.'
                          '\n While your use of the app gives us consent to collect and process the data, you may WITHDRAW consent at any time in the SETTINGS portions of our app for specific features. If this level of control is not adequate you MUST stop using our services.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "What Data Do We Have About You?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'Please see the section on what data we collect if you are curious about the kind of data we have on you. If you want to know explicitly what information we have on you personally please contact us at luderestudiosdev@gmail.com',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "What Power Do I Have Over My Data?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'Depending on where you live, you have a range of power over your data, but at Ludere Studios we currently extend the most common powers to everyone.'
                          '\n'
                          '\n'
                          'Right To Access:'
                          '\n'
                          '\n You have the right to see any data we have on you. We present some of this information in the app, but should you wish to know more, contact luderestudiosdev@gmail.com'
                          '\n'
                          '\n'
                          'Right To Data Mobility:'
                          '\n'
                          '\n You have the right to move your data to another service, however the data Ludere Studios has is not usable on any other service as it is unique and proprietary to Ludere Studios games and services.'
                          '\n'
                          '\n'
                          'Right To Be Forgotten:'
                          '\n'
                          '\n At any point should you want us and our partners to "forget" you, simply go into one of our games SETTINGS and choose to delete all remote data. Note that this action cannot be undone! Contact luderestudiosdev@gmail.com for more guidance on how to do this.'
                          '\n'
                          '\n'
                          'Right To Not Have Your Data Sold:'
                          '\n'
                          '\n Ludere Studios does not sell data we collect. While some of our partners will not sell your data, some maintain that right, and while that data is minimal, should you wish to limit it is sale you can disable Advertisements and Push Notifications OR simply DO NOT use our games or services and you can ensure no data of yours is sold. As our partners update their privacy policies we are always pushing to disable the sale of your data. Should you have a question for one of our partners see their information below in Third Parties.'
                          '\n'
                          '\n'
                          '\n Third Parties:'
                          '\n'
                          '\n Ludere Studios works with a few carefully selected vendors to provide services for its players and operate its business. We DO share information with them as is required to carry out their function. This consists of unique device identifiers, device information, and usage information. As the controller of your data, we carry out your right to be forgotten, and right to not have your data sold automatically, but not all of them support programmatic control over these rights. Should you wish to learn more please contact luderestudiosdev@gmail.com or contact our partners directly. NOTE: While Ludere Studios may extend data privacy rights to all players, our partners are not bound by this requirement and should you not possess the rights of a GDPR customer or CCPA customer they may deny your request.'
                          '\n'
                          '\n Unity Ads (Advertisements) privacy@unity3d.com'
                          '\n Facebook (Advertisements) privacy@facebook.com'
                          '\n Google/Admob (Advertisements) https://support.google.com/admob/gethelp',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "Children’s Privacy",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'If you are under the age of 18, you must obtain your parent’s permission to play our games while online, or use any of our services. If you are under the age of 13 (or 14, 15, or 16 in some locations), you are not permitted to use any of our Services, or play any of our games. All of our games are not intended for children under the age of 13 (or 14, 15, 16) and we do not knowingly market to or collect, use or disclose information from children. If Ludere Studios learns that we have inadvertently gathered personal information from children under such age, Ludere Studios will take reasonable measures to promptly erase such personal information from our records. If you are a parent who wishes to have your childs accidentally collected information deleted, please contact luderestudiosdev@gmail.com or simply delete it from the SETTINGS section of the application.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "Changes to This Privacy Policy",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "Data Retention",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'Ludere Studios retains data indefinitely unless you request it to be deleted (see section on your data rights). We do not guarantee we will maintain indefinite records as we may purge our backups and analytics from time to time without notice.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "Security",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'Ludere Studios only uses world class data centers with matching technical security and ensures our partners do the same. Our organization limits access to information we collect to an extremely limited and trained subset of employees who require access to that information to carry out their job function.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "Contact Us",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at luderestudiosdev@gmail.com',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
      [HomeItem(context: context)],
      [
        Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 1000,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Contact",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'luderestudiosdev@gmail.com'
                          '\n'
                          '(+57) 311 346 8614',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ][index];
  }
}
