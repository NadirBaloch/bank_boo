import 'package:bank_boo/components/constants.dart';
import 'package:bank_boo/components/feature_tile.dart';
import 'package:bank_boo/components/footer.dart';
import 'package:bank_boo/components/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank Boo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: MenuBar(),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'With ',
                          style: kBoldTextStyle,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Bank',
                              style: TextStyle(color: kSecondaryColor),
                            ),
                            TextSpan(text: ' boo app\nbanking is now easy!!'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "We help our user to make the right finance decision\nto make their money safe",
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "DOWNLOAD NOW ON:",
                        style: TextStyle(color: kSecondaryColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage('images/play_store.png'),
                          ),
                          SizedBox(width: 20),
                          Image(
                            image: AssetImage('images/app_store.png'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time_sharp),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 1,
                            height: 40,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Trusted Users"),
                              Image(
                                image: AssetImage('images/ratings.png'),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "Over  ",
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "13.5k",
                                      style: TextStyle(
                                          color: kSecondaryColor,
                                          decoration: TextDecoration.underline),
                                    ),
                                    TextSpan(text: "  users all over world :-)")
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('images/bg_mobile.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  Text(
                    "Our awesome features",
                    style: kBoldTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Curuse risus at ultrices mi tempus. Dolor magna eget est lorem.\nAmet consectetur adipiscing elit pellentesque habitant."),
                      Image(
                        image: AssetImage('images/left.png'),
                      ),
                      Image(
                        image: AssetImage('images/right.png'),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      FeatureTile(
                        title: "SEND MONEY",
                        description:
                            'TO ACC TO ACC: Send money service allows you to send or transfer moeny from your Account',
                        imageTitle: 'images/up.png',
                      ),
                      FeatureTile(
                        title: "RECEIVE MONEY",
                        description:
                            'MANAGE ACCOUNT : Send money service allows you to send or transfer money from your account.',
                        imageTitle: 'images/down.png',
                      ),
                      FeatureTile(
                        title: "MONEY EXCHANGE",
                        description:
                            'EXCHANGE MONEY: Send money service allows you to send or transfer moeny from your Account',
                        imageTitle: 'images/dollar.png',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //Footer with links
          Footer()
        ],
      ),
    );
  }
}
