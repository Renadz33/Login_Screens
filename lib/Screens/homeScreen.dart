
import 'package:flutter/material.dart';
import 'package:login_screens/Screens/signUpScreen.dart';

import 'loginScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 70,),
            Image.asset('assets/Face to face-amico.png',width: 350,),
            const SizedBox(height: 20,),
            const Text('Hello!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff37474F)),),
            const SizedBox(height: 15,),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 50),
              child: Center(child: Text('Best place to write life stories and share your experiences with others',style: TextStyle(fontSize: 17,color: Colors.grey),)),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
              },
              child: Text('LOGIN',style: TextStyle(fontSize: 17),),
              style: ElevatedButton.styleFrom(
                primary:const Color(0xff1E1BBB),
                minimumSize: const Size(200, 50),
                // shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
              },
              child: const Text('SIGN UP',style: TextStyle(fontSize: 17),),
              style: ElevatedButton.styleFrom(
                primary:const Color(0xff1E1BBB),
                minimumSize: const Size(200, 50),
                // shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
            ),
          ]),
    );
  }
}