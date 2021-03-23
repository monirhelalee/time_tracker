import 'package:flutter/material.dart';
import 'package:time_tracker_fultter_course/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_fultter_course/common_widgets/custom_elevated_button.dart';

class SignInPage extends StatelessWidget {
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
          SignInButton(
            text: 'Sign in with Email',
            pColor: Colors.teal[700],
            opColor: Colors.white,
            onPressed: (){},
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('OR',textAlign: TextAlign.center,),
          SizedBox(
            height: 10.0,
          ),
          SignInButton(
            text: 'Go anonymous',
            pColor: Colors.lime[300],
            opColor: Colors.black,
            onPressed: (){},
          ),

        ],
      ),
    );
  }
}
