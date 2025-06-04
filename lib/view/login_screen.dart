import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Column(
        children: [
          Center(
            child: InkWell(
                onTap: (){
                  Utils.toastMessage('no internet connection');
                },
                child: Text('Toast Message')),
          ),
          Center(
            child: InkWell(
                onTap: (){
                  Utils.flushBarErrorMessage('no internet connection', context);
                },
                child: Text('Flush Bar')),
          ),
          Center(
            child: InkWell(
                onTap: (){
                  Utils.snakeBar('no internet connection', context);
                },
                child: Text('Snack Bar')),
          ),
        ],
      )
    );
  }
}
