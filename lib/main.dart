import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Merriweather',
        primaryColor: Color.fromARGB(255, 224, 35, 4),
        accentColor: Color.fromARGB(255, 64, 224, 208),
      ),
      home: MyHomePage(title: 'Damilola\'s Portfolio'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
        fontFamily: "Merriweather",
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 9.0,
        color: Colors.white,
        letterSpacing: 0.06 // https://www.w3.org/Style/Examples/007/units,
        );
    var _topHeroSection = Align(
      alignment: Alignment(0, 0.5),
      child: Container(
        margin: EdgeInsets.only(top: 50),
        child: Stack(
          children: [
            Container(
              child: Image.asset('images/bg-red.png'),
            ),
            Container(
              child: Image.asset('images/bg-grn.png'),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 141,
              width: 141,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/me.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
    var _heroLabel = Container(
      margin: EdgeInsets.only(top: 20, bottom: 35),
      child: Column(
        children: [
          Text(
            'Damilola Omowumi',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 24.0,
              fontFamily: 'Merriweather',
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 85, right: 85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 105,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('images/port.png'),
                      Text(
                        'Software Engineer',
                        style: TextStyle(
                          fontFamily: "Merriweather",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 9.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('images/pin.png'),
                      Text(
                        'Lagos, Nigeria.',
                        style: TextStyle(
                          fontFamily: "Merriweather",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 9.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
    var _hello = Container(
        margin: EdgeInsets.only(left: 50, right: 50, bottom: 30),
        child: Text(
          'Hi, My name is Damilola Omowumi,  I '
          'am a Software Engineer with back-end '
          'experience using Java. I am  currently '
          'learning flutter for mobile application '
          'development. When I am not coding I '
          'play video games or watch a movie.',
          softWrap: true,
          style: TextStyle(
            fontFamily: "Merriweather",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            height: 1.4,
            fontSize: 14.0,
            letterSpacing: 0.06,
            color: Colors.black,
          ),
          textAlign: TextAlign.justify,
        ));
    var _portfolioTags = Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            margin: EdgeInsets.only(left: 80, right: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/Java.png'),
                Image.asset('images/js.png'),
                Image.asset('images/Flutter.png')
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 12, 12),
            margin: EdgeInsets.only(left: 80, right: 80),
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Java',
                  style: style,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Javascript',
                  style: style,
                ),
                Text(
                  'Flutter',
                  style: style,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
        ],
      ),
    );
    var _social = Container(
      margin: EdgeInsets.only(left: 100, right: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Image.asset('images/ig.png'),
              Image.asset('images/twt.png'),
              Image.asset('images/git.png'),
            ],
          ),
          Text(
            ': @odamilola36',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
        ),
        body: Column(
          children: [
            _topHeroSection,
            _heroLabel,
            _hello,
            _portfolioTags,
            _social, //TODO:  space the icons
          ],
        ),
      ),
    );
  }
}
