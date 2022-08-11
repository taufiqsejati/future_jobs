import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: titleTextStyle,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Build Your Career',
              style: subTitleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget illustration() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Center(
          child: Image.asset(
            'assets/image_sign_in.png',
            width: 260,
          ),
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: titleTextStyle,
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: emailController,
              cursorColor: primaryColor,
              onChanged: (value) {
                print(value);
                bool isValid = EmailValidator.validate(value);
                print(isValid);
                if (isValid) {
                  setState(() {
                    isEmailValid = true;
                  });
                } else {
                  setState(() {
                    isEmailValid = false;
                  });
                }
              },
              style: TextStyle(color: isEmailValid ? primaryColor : redColor),
              decoration: InputDecoration(
                hintText: '',
                fillColor: inputFieldColor,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                        color: isEmailValid ? primaryColor : redColor)),
              ),
            ),
            // Container(
            //   width: double.infinity,
            //   height: 45,
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 20,
            //   ),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(100),
            //     color: inputFieldColor,
            //   ),
            //   child: Center(
            //     child: TextFormField(
            //       controller: emailController,
            //       cursorColor: primaryColor,
            //       decoration: InputDecoration(
            //         hintText: '',
            //         fillColor: inputFieldColor,
            //         filled: true,
            //         enabledBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(100),
            //             borderSide: BorderSide.none),
            //         focusedBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(100),
            //             borderSide: BorderSide()),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      );
    }

    Widget inputPassword() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: passwordController,
              cursorColor: primaryColor,
              obscureText: true,
              decoration: InputDecoration(
                hintText: '',
                fillColor: inputFieldColor,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: primaryColor)),
              ),
            )
            // Container(
            //   width: double.infinity,
            //   height: 45,
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 20,
            //   ),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(100),
            //     color: inputFieldColor,
            //   ),
            //   child: Center(
            //     child: TextFormField(
            //       controller: passwordController,
            //       cursorColor: primaryColor,
            //       obscureText: true,
            //       style: purpleTextStyle.copyWith(),
            //       decoration: InputDecoration.collapsed(
            //         hintText: '',
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      );
    }

    Widget signInButton() {
      return Container(
        height: 45,
        width: double.infinity,
        margin: EdgeInsets.only(top: 40),
        child: TextButton(
          onPressed: () async {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/home',
              (route) => false,
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          child: Text(
            'Sign In',
            style: buttonTextStyle,
          ),
        ),
      );
    }

    Widget signUpButton() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          bottom: 20,
        ),
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Create New Account',
              style: greyTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // padding: EdgeInsets.symmetric(
          //   horizontal: defaultMargin,
          // ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    illustration(),
                    inputEmail(),
                    inputPassword(),
                    signInButton(),
                    signUpButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
