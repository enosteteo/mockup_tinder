import 'package:flutter/material.dart';

class TinderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: const [
              Color(0xffFD297b),
              Color(0xffff5864),
              Color(0xffff655b),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 290,
                ),
                LogoWidget(),
                SizedBox(
                  height: 110,
                ),
                DescriptionWidget(),
                SizedBox(
                  height: 26,
                ),
                GenericOutlinedButtonWithIconAndText(
                  icon: 'assets/images/icons/icon-apple.png',
                  text: 'SIGN IN WITH APPLE',
                  sizebetweenIconAndText:
                      MediaQuery.of(context).size.width * 0.2,
                ),
                SizedBox(
                  height: 10,
                ),
                GenericOutlinedButtonWithIconAndText(
                  icon: 'assets/images/icons/icon-facebook.png',
                  text: 'SIGN IN WITH FACEBOOK',
                  sizebetweenIconAndText:
                      MediaQuery.of(context).size.width * 0.16,
                ),
                SizedBox(
                  height: 10,
                ),
                GenericOutlinedButtonWithIconAndText(
                  icon: 'assets/images/icons/icon-conversation-balloon.png',
                  text: 'SIGN IN WITH PHONE NUMBER',
                  sizebetweenIconAndText:
                      MediaQuery.of(context).size.width * 0.12,
                ),
                SizedBox(
                  height: 20,
                ),
                SingInWidget(),
                SizedBox(
                  height: 56,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo/tinder.png',
      width: MediaQuery.of(context).size.width * 0.39,
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'By tapping Create Account or Sign In, you agree to our\n',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 12,
          ),
          children: const <TextSpan>[
            TextSpan(text: ' '),
            TextSpan(
                text: 'Terms',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(text: '. '),
            TextSpan(
              text: 'Learn how we process your data in our',
            ),
            TextSpan(text: ' '),
            TextSpan(
              text: 'Privacy\nPolicy',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: ' '),
            TextSpan(text: 'and'),
            TextSpan(text: ' '),
            TextSpan(
              text: 'Cookies Policy',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );
  }
}

class SingInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Trouble Signing In?',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white.withOpacity(0.8),
        fontSize: 16,
      ),
    );
  }
}

class GenericOutlinedButtonWithIconAndText extends StatelessWidget {
  String icon;
  String text;
  double sizebetweenIconAndText;

  GenericOutlinedButtonWithIconAndText({
    Key? key,
    required this.icon,
    required this.text,
    required this.sizebetweenIconAndText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          shape: StadiumBorder(),
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              icon,
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            SizedBox(
              width: sizebetweenIconAndText,
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
