import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week_18_assessment/widgets/my_button.dart';
import 'package:week_18_assessment/widgets/my_outlined_input.dart';
import 'package:week_18_assessment/widgets/password_outlined_input.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          leading: IconButton(
              color: Colors.black,
              onPressed: (){},
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                size: 40,
              )
          )
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 20.0
        ),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MainTitle(),
                SubTitle(),
                SizedBox(
                  height: 30,
                ),
                UserInput(),
                SizedBox(
                  height: 20,
                ),
                EmailInput(),
                SizedBox(
                  height: 20,
                ),
                PasswordInput(),
                SizedBox(
                  height: 20,
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
                AlreadyHaveAccount(),
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
        'Create Account',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}





class SubTitle extends StatelessWidget {
  const SubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Text(
          'Fill your details or continue with social media',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 18,
          )
      ),
    );
  }
}





class UserInput extends StatelessWidget {
  const UserInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedTextField(
      icon: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.person,
          color: Colors.grey.shade600,
        ),
      ),
      placeholder: 'Enter User Name',
      inputType: TextInputType.name,
    );
  }
}




class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedTextField(
      icon: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.email_outlined,
          color: Colors.grey.shade600,
        ),
      ),
      placeholder: "Enter Email Address",
      inputType: TextInputType.emailAddress,
    );
  }
}




class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PasswordOutlinedTextField(
      icon: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.lock,
          color: Colors.grey.shade600,
        ),
      ),
      placeholder: "Enter Password",
      inputType: TextInputType.visiblePassword,
      suffixIcon: SizedBox(
        width: 50.0,
        child: Icon(
          Icons.visibility_off,
          color: Colors.grey.shade600,
        ),
      ),
    );
  }
}




class ContinueText extends StatelessWidget {
  const ContinueText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 16.0,
          child: Divider(
            color: Colors.grey.shade600,
          ),
        ),
        SizedBox(width: 6.0,),
        Text(
          "Or Continue With",
          style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 18
          ),
        ),
        SizedBox(width: 6.0,),
        SizedBox(
          width: 16.0,
          child: Divider(
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}




class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/Google.png")
        ),
        SizedBox(width: 20.0,),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/Facebook.png")
        ),
      ],
    );
  }
}






class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already Have Account?',
          style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 18
          ),
        ),
        TextButton(

          onPressed: () { Navigator.pushNamed(context, 'login'); },
          child: Text(
            'Log In',
            textAlign: TextAlign.end,
            style: TextStyle(
                color: Colors.lightBlue.shade900,
                fontSize: 18
            ),
          ),
        ),
      ],
    );
  }
}



