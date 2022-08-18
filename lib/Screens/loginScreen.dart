import 'package:flutter/material.dart';
import 'package:login_screens/Screens/signUpScreen.dart';

import 'forgetpass.dart';
import 'homeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding:  EdgeInsets.only(top: 70,left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),iconSize: 35,color: Colors.grey,),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child:  Text('Welcome',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff37474F)),),
                  ),
                  const SizedBox(height: 5,),
                  const Padding(
                    padding:  EdgeInsets.only(left: 20),
                    child:  Text('sign in to continue',style: TextStyle(fontSize: 17,color: Colors.grey),),
                  )
                ],
              ),
            ),
            const SizedBox(height: 60,),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            const SizedBox(height: 60,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
              },
              child:  Text('LOGIN',style: TextStyle(fontSize: 17),),
              style: ElevatedButton.styleFrom(
                primary:const Color(0xff1E1BBB),
                minimumSize: const Size(200, 50),
              ),
            ),
            const SizedBox(height: 10,),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPassScreen()));
                },
                child: const Text('Forget Password?',style: TextStyle(color: Color(0xff416ED4),fontSize: 17))),
            const SizedBox(height: 30,),
            const Text('___________________ or ___________________',style: TextStyle(color: Color(0xff6B7A82),fontSize: 17)),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children:  [
                  const Text('Dont have an account? ',style: TextStyle(color: Colors.grey,fontSize: 17)),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                      },
                      child: const Text('Sign up',style: TextStyle(color: Color(0xff416ED4),fontSize: 17))),
                ],),
            )
          ]),

    );
  }
}