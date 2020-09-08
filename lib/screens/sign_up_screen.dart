import 'package:flutter/material.dart';
import 'package:konektor/config/palette.dart';
import 'package:konektor/widgets/auth_input_field.dart';
import 'package:konektor/widgets/default_button.dart';

class SignUpScreen extends StatefulWidget {
  static const id = 'signup_screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                          labelText: 'Full name',
                          obscureText: false,
                          kType: TextInputType.name,
                        ),
                        SizedBox(height: (defaultPadding)),
                        AuthInputField(
                          labelText: 'Email',
                          obscureText: false,
                          kType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: (defaultPadding)),
                        AuthInputField(
                          labelText: 'Password',
                          obscureText: true,
                        ),
                        SizedBox(height: (defaultPadding)),
                        AuthInputField(
                          labelText: 'Phone Number',
                          obscureText: false,
                          kType: TextInputType.phone,
                        ),
                        SizedBox(height: (defaultPadding)),
                        AuthInputField(
                          labelText: 'Location',
                          obscureText: false,
                          kType: TextInputType.streetAddress,
                        ),
                        SizedBox(height: (defaultPadding)),
                        AuthInputField(
                          labelText: 'Date of Birth',
                          obscureText: false,
                          kType: TextInputType.datetime,
                        ),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        DefaultButton(
                          title: 'Sign Up',
                          bgColor: primaryLightColor,
                          onPressed: () {
                            print('Sign Up Clicked');
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
