import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_fultter_course/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_fultter_course/common_widgets/custom_elevated_button.dart';
import 'package:time_tracker_fultter_course/services/auth.dart';

class SignInPage extends StatelessWidget {

  final void Function(User) onSignIn;
  final AuthBase auth;

  const SignInPage({Key key,@required this.auth, @required this.onSignIn}) : super(key: key);

  Future<void> _signInAnonymously()async{
    try{
      final user = await auth.signInAnonymously();
      onSignIn(user);
      //print('${userCredentials.user.uid}');
    }catch (e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 5.0,
      ),
      //drawer: Drawer(),
      body: _buildContent(),
      backgroundColor: Colors.grey[300],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Sign in', textAlign: TextAlign.center,style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, letterSpacing:10),),
          SizedBox(
            height: 20.0,
          ),

          SignInButton(
            text: 'Sign in with Google',
            pColor: Colors.white,
            opColor: Colors.black,
            onPressed: (){},
          ),
          SizedBox(
            height: 10.0,
          ),
          SignInButton(
            text: 'Sign in with Facebook',
            pColor: Color(0xff334d92),
            opColor: Colors.white,
            onPressed: (){},
          ),
          SizedBox(
            height: 10.0,
          ),
          // SignInButton(
          //   text: 'Sign in with Email',
          //   pColor: Colors.teal[700],
          //   opColor: Colors.white,
          //   onPressed: (){},
          // ),
          CustomElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.email_outlined),
                Text('Sign in with Email'),
                SizedBox(width: 20,)
              ],
            ),
            primaryColor: Colors.teal[700],
            onPrimaryColor: Colors.white,
            onPressed: (){},
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('OR',textAlign: TextAlign.center,),
          SizedBox(
            height: 10.0,
          ),
          // SignInButton(
          //   text: 'Go anonymous',
          //   pColor: Colors.lime[300],
          //   opColor: Colors.black,
          //   onPressed: (){},
          // ),
          CustomElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.login),
                Text('Go anonymous'),
                SizedBox(width: 20,)
              ],
            ),
            primaryColor: Colors.lime[300],
            onPrimaryColor: Colors.black,
            onPressed: _signInAnonymously,
          ),

        ],
      ),
    );
  }
}
