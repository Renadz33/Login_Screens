import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                child:  Text('Reset Password',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff37474F)),),
              ),
            ],
          ),
        ),
        Image.asset('assets/Login-bro.png',width: 300,),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 60),
          child: Center(child: Text('Please Enter Your Email Address To Reset The Password',style: TextStyle(fontSize: 17,color: Colors.grey),)),
        ),
        const SizedBox(height: 50,),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email Address',
              prefixIcon: Icon(Icons.email),
            ),
          ),
        ),
        const SizedBox(height: 50,),
        ElevatedButton(
          onPressed: (){},
          child:  Text('Send',style: TextStyle(fontSize: 17),),
          style: ElevatedButton.styleFrom(
            primary:const Color(0xff1E1BBB),
            minimumSize: const Size(200, 50),
          ),
        ),
      ]),
    );
  }
}