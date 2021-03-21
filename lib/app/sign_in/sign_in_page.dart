import 'package:flutter/material.dart';

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
          ElevatedButton(
            child: Text('Sign in with Google'),
            onPressed: (){},
          )
        ],
      ),
    );
  }
}
