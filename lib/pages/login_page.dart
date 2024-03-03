import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week_18_assessment/pages/signup_page.dart';
import 'package:week_18_assessment/widgets/my_button.dart';


class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: 100.0,
            horizontal: 20.0
        ),
        child: ListView(
          children: <Widget>[
            Column(
              verticalDirection : VerticalDirection.down,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MainTitle(),
                SubTitle(),
                SizedBox(
                  height: 30,
                ),
                EmailInput(),
                SizedBox(
                  height: 20,
                ),
                PasswordInput(),
                TextButton(

                  onPressed: () {  },
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 18
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                MyButton(
                  title: "LOG IN",
                ),
                SizedBox(
                  height: 10,
                ),
                ContinueText(),
                SizedBox(
                  height: 20,
                ),
                SocialMediaButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New User?',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 18
                      ),
                    ),
                    TextButton(

                      onPressed: () { Navigator.pushNamed(context, 'signup'); },
                      child: Text(
                        'Create Account',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.lightBlue.shade900,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



class MainTitle extends StatelessWidget {
  const MainTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Text(
        'Welcome Back!',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}