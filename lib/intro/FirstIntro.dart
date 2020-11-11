import 'package:design/intro/SecondIntro.dart';
import 'package:design/widgets/Pelette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Pelette.ColorPrimaryDark,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child:
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height/1.7,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage('image/second_intro.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Container(margin: const EdgeInsets.only(top: 15,left: 15,right: 15),
                child: Text('CREATING HAS NEVER BEEN EASIER',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 17),
                ),
              ),
              Container(margin: const EdgeInsets.only(top: 20,left: 15,right: 15),
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text: 'Spaciko',style: TextStyle(color: Pelette.ColorPrimaryDark,fontSize: 17,fontWeight: FontWeight.w600)),
                        TextSpan(text: ',Setting new Standards on leasing a Private Working space!',style: TextStyle(color: Colors.black87,fontSize: 16))
                      ]
                  ),
                ),
              ),
              Container(margin: const EdgeInsets.only(top: 10),
                child: Text('Now, you set the scene!',textAlign: TextAlign.center,style: TextStyle(color: Colors.black87,fontSize: 16)),
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('image/light_green.png')
                      ,fit: BoxFit.cover
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          child:  GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => SecondIntro()
                              ));
                            },
                            child: Image(
                              image: AssetImage('image/red_round.png'),
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Text('Become a host',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                        )
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child:  GestureDetector(
                            onTap: (){},
                            child: Image(
                              image: AssetImage('image/light_red_round.png'),
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          child: Text('Work Any Where',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )

    );
  }
}