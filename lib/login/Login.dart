import 'package:design/RegisterActivity/Register.dart';
import 'package:design/intro/FirstIntro.dart';
import 'package:design/utils/Validation.dart';
import 'package:design/widgets/Pelette.dart';
import 'package:design/widgets/Toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>();
  String email;
  TextEditingController tf;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor:Pelette.ColorPrimaryDark,
          )
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('image/login.png'),
                  fit: BoxFit.cover
              )
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(margin: const EdgeInsets.only(top: 80),
                    height: 130,
                    child: Image(
                      image: AssetImage('image/logo.png'),
                    ),
                  ),

                  Container(padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    margin: const EdgeInsets.only(top: 20),
                    child: TextFormField(
                      controller: tf,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                      ),
                      validator: (text){
                        email = text.toString();
                        if (Validation.isEmailValid(text)) {
                          return 'Enter Valid Email';
                        }
                        else {
                          return null;
                        }
                      },
                    ),
                  ),

                  Container(padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    margin: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      obscureText: true,
                      validator: (text){
                        if(Validation.isPswValid(text)){
                          return 'Password must be more than 8 character';
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Password',
                          contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                      ),
                    ),
                  ),

                  Container( margin: const EdgeInsets.only(top: 10),
                    child: Text('Forgot Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(margin: const EdgeInsets.fromLTRB(20,10,20,10),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff18a499),
                      child: FlatButton(
                        onPressed: (){
                          var toast = Toast();
                          toast.overLay = false;
                          if(_formKey.currentState.validate()){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => FirstIntro()
                            ));
                            toast.showOverLay('Login Success', Colors.white,Colors.black38,context);
                          }
                        },
                        minWidth: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 17),),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                        'Sign In With'
                    ),
                  ),
                  Container(margin: const EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child:
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image(height: 50,
                              image: AssetImage('image/facebook.png'),
                            ),
                          ),
                        ),

                        Flexible(
                          child:  Image(height: 48,
                            image: AssetImage('image/search.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(margin: const EdgeInsets.only(top: 10),
                    child: RichText(
                      text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'Not a member? ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),
                            TextSpan(text: 'Register',style: TextStyle(color: Pelette.ColorPrimaryDark,fontWeight: FontWeight.w500),
                                recognizer: TapGestureRecognizer()
                                  ..onTap=(){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder : (context) => Register()
                                    ));
                                  }
                            )
                          ]
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

