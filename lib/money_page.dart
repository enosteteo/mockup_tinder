import 'package:flutter/material.dart';

class MoneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              LogoWidget(),
              SizedBox(
                height: 20,
              ),
              TitleWidget(),
              SizedBox(
                height: 20,
              ),
              SubTitleWidget(),
              SizedBox(
                height: 100,
              ),
              SingUpWithEmailWidget(),
              SizedBox(
                height: 16,
              ),
              SingUpWithGoogleWidget(),
              SizedBox(
                height: 46,
              ),
              SingInWidget(),
              SizedBox(
                height: 62,
              ),
            ],
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
      'assets/images/logo/logo.jpg',
      width: MediaQuery.of(context).size.width * 0.39,
    );
  }
}

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Get your Money Under Control',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white.withOpacity(1),
        fontSize: 40,
      ),
    );
  }
}

class SubTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Manage your expenses.\nSeamlessly.',
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white.withOpacity(0.5),
        fontSize: 24,
      ),
    );
  }
}

class SingUpWithEmailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Sign Up with Email ID',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xff4b40de),
          // onPrimary: Color(const 0x4b40de,)
        ),
      ),
    );
  }
}

class SingUpWithGoogleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
        ),
        icon: Image.asset(
          'assets/images/icons/google-logo.png',
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        label: Text(
          'Sing Up with Google',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class SingInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'Already have an account?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.8),
            fontSize: 18,
          ),
          children: const <TextSpan>[
            TextSpan(text: ' '),
            TextSpan(
                text: 'Sign In',
                style: TextStyle(decoration: TextDecoration.underline)),
          ]),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );
  }
}
