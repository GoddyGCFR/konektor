import 'package:flutter/material.dart';
import 'package:konektor/config/palette.dart';
import 'package:konektor/widgets/default_button.dart';
import 'package:konektor/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bGColorDark,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Text('Konektor',
                          style: TextStyle(
                              fontFamily: 'BillaBong', fontSize: 100.0, color: primaryLightColor)),
                      const Text('Bringing quality services to the comfort of your home',
                          style: TextStyle(fontSize: 14.0, color: secondaryDarkColor)),
                      const SizedBox(height: (defaultPadding * 3)),
                    ],
                  ),
                  Form(
                    child: Column(
                      key: _formKey,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        AuthInputField(
                          labelText: 'Username',
                          obscureText: false,
                        ),
                        SizedBox(height: (defaultPadding)),
                        AuthInputField(
                          labelText: 'Password',
                          obscureText: true,
                        ),
                        FlatButton(
                            textColor: Color(0xFF8A95AF),
                            onPressed: () {
                              print('Forget Password');
                            },
                            child: Text(
                              'Forget Password',
                            )),
                        DefaultButton(
                          title: 'Sign In',
                          bgColor: primaryLightColor,
                          onPressed: () {
                            print('Sign In Clicked');
                          },
                        ),
                        // SizedBox(height: medPadding),
                        // DefaultButton(
                        //   title: 'Sign in with Facebook',
                        //   bgColor: facebookBlue,
                        //   onPressed: () {
                        //     print('Sign in with Facebook Clicked');
                        //   },
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  // RichText(
                  //   text: TextSpan(
                  //     text: 'Don\'t have an account? ',
                  //     style: TextStyle(
                  //       color: secondaryDarkColor,
                  //     ),
                  //     children: <TextSpan>[
                  //       TextSpan(
                  //         text: 'Sign Up',
                  //         style: TextStyle(color: primaryLightColor, fontWeight: FontWeight.bold),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
