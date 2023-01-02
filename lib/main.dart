import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
bool pass=true;
String? arr,err,prr;
TextEditingController editingController=TextEditingController();
TextEditingController passwordController=TextEditingController();
TextEditingController phoneController=TextEditingController();
String email="";
String password="";
String phone="";
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top:100,left: 30),
              height: 70,
              width: 60,
              child: Image(image: AssetImage('assets/images/bg.jpg'),fit: BoxFit.fitWidth,)
          ),//logo images
          Container(
            margin: EdgeInsets.only(top:10,left: 70),
            height: 45,
            width: 150,
            // color: Colors.red,
            child: Text('Sign Up',style: TextStyle(fontFamily: 'FontMain',fontSize: 28 ),),
          ),//sign up text
          Container(
            height: 20,
            // color: Colors.yellow,
            margin: EdgeInsets.only(left: 30),
            child: Text('Add Your Detail To Sign Up ',style: TextStyle(fontFamily: 'FontMain',fontSize: 14 ),),
          ),//add detail text
          Container(
            height: 70,
            width: 300,
            margin: EdgeInsets.only(top:10,left: 30),
            child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                prefixIcon: Icon(Icons.people),
                hintText: 'please enter Name',
                labelText: 'Name'
            )),
          ),//name field
          Container(
            height: 70,
            margin: EdgeInsets.only(top:6,left: 30),
            width: 300,
            child: TextField(
              controller: editingController,
                onChanged: (val){
                arr=(val.length<=10)?'enter a valid email*':null;
                setState(() {});
                if(editingController.text.length>10){
                  email=editingController.text;
                  setState(() {

                  });
                }
                },
                decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                prefixIcon: Icon(Icons.email),
                hintText: 'please enter Email',
                labelText: 'Email',
                  errorText: arr,
            )),
          ),//Email field
          Container(
            height: 70,
            margin: EdgeInsets.only(top:6,left: 30),
            width: 300,
            child: TextField(
                controller: phoneController,
                onChanged: (val){
                  prr=(val.length<10)?'enter a valid phone number*':null;
                  setState(() {});
                  if(phoneController.text.length==10){
                    phone=phoneController.text;
                    setState(() {

                    });
                  }
                },
                decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                prefixIcon: Icon(Icons.phone),
                hintText: 'please enter Mobile No.',
                counterText: "",
                labelText: 'Mobile No.',
                  errorText: prr,
            ),keyboardType: TextInputType.number,inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              maxLength: 10,
            ),
          ),//Phone filed
          Container(
            height: 70,
            margin: EdgeInsets.only(top:6,left: 30),
            width: 300,
            child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                prefixIcon: Icon(Icons.location_on),
                hintText: 'please enter Address',
                labelText: 'Address'
            )),
          ),//address filed
          Container(
            height: 70,
            margin: EdgeInsets.only(top:6,left: 30),
            width: 300,
            child: TextField(
                controller: passwordController,
                onChanged: (val){
                  err=(val.length<8)?'enter a valid password*':null;
                  setState(() {});
                  if(passwordController.text.length>8){
                    password=passwordController.text;
                    setState(() {

                    });
                  }
                },
                obscureText: pass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: (){
                        setState(() {
                          pass=!pass;
                        });
                      },
                    ),
                    hintText: 'please enter Password',
                    labelText: 'Password',
                  errorText: err,
                )),
          ),//password filed
          Container(
              height: 45,
              margin: EdgeInsets.only(top:20,left: 30),
              width: 150,
              child:ElevatedButton(
                onPressed:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
                child: Text('SUBMIT',style: TextStyle(fontSize: 14)),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black54),
                    backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color:Colors.transparent),
                    ))
                ),

              )
          ),
          Container(
              height: 40,
              margin: EdgeInsets.only(top:10),
              width: 300,
              child:Row(
                children: [
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top:10,left: 45),
                    child: Text('Already have an Account?',style: TextStyle(fontFamily: 'FontMain',fontSize: 16 ),),
                  ),
                  Container(
                      height: 50,
                      margin: EdgeInsets.only(top:10,left: 5),
                      child: new GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SecoundRoute()));
                        },
                        child: Text('Login',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,color: Colors.orangeAccent, ),),
                      )

                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
class SecoundRoute extends StatefulWidget {
  const SecoundRoute({Key? key}) : super(key: key);

  @override
  State<SecoundRoute> createState() => _SecoundRouteState();
}
class _SecoundRouteState extends State<SecoundRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top:100),
              height: 60,
              width: 60,
              child: Image(image: AssetImage('assets/images/bg.jpg'),fit: BoxFit.fitWidth,)
          ),
          Container(
            margin: EdgeInsets.only(top:10,left: 80),
            height: 45,
            width: 150,
            // color: Colors.red,
            child: Text('Login',style: TextStyle(fontFamily: 'FontMain',fontSize: 28 ),),
          ) ,
          Container(
            height: 20,
            // color: Colors.yellow,
            margin: EdgeInsets.only(),
            child: Text('Add Your Detail To Login',style: TextStyle(fontFamily: 'FontMain',fontSize: 12 ),),
          ),
          Container(
            height: 70,
            margin: EdgeInsets.only(top:20),
            width: 300,
            child: TextField(
                controller: editingController,
                onChanged: (val){
                  arr=(val.length<=10)?'enter a valid email*':null;
                  setState(() {});
                  if(editingController.text.length>10){
                    email=editingController.text;
                    setState(() {

                    });
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'please enter Email',
                  labelText: 'Email',
                  errorText: arr,
                )),
          ),
          Container(
            height: 70,
            margin: EdgeInsets.only(top:6),
            width: 300,
            child: TextField(
                controller: passwordController,
                onChanged: (val){
                  err=(val.length<8)?'enter a valid password*':null;
                  setState(() {});
                  if(passwordController.text.length>8){
                    password=passwordController.text;
                    setState(() {

                    });
                  }
                },
                obscureText: pass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: (){
                      setState(() {
                        pass=!pass;
                      });
                    },
                  ),
                  hintText: 'please enter Password',
                  labelText: 'Password',
                  errorText: err,
                )),
          ),
          Container(
              height: 40,
              margin: EdgeInsets.only(top:20),
              width: 250,
              child:ElevatedButton(
                onPressed:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                },

                child: Text('SUBMIT',style: TextStyle(fontSize: 14)),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black54),
                    backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color:Colors.transparent),
                    ))
                ),

              )
          ),
          Container(
              height: 30,
              margin: EdgeInsets.only(top:15),
              child: new GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SecoundRoute()));
                },
                child: Text('Forgot Your Password?',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,color: Colors.orangeAccent, ),),
              )

          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 2,
                  width: 100,
                  margin: EdgeInsets.only(left: 30),
                  color: Colors.black26,
                ),
                Container(
                  height: 50,
                  width: 95,
                padding: EdgeInsets.only(top:15,left: 6),
                // color: Colors.cyan,
                child: Text('Or Login With',style: TextStyle(color: Colors.black),),),
                Container(
                  height: 2,
                  width: 105,
                  color: Colors.black26,
                ),
              ],
            ),


          ),
          Container(
              height: 45,
              margin: EdgeInsets.only(top:10),
              width: 270,
              child:ElevatedButton.icon(
                onPressed:(){},
                icon: Icon(Icons.facebook,size: 24,),
                label: Text("Login With Facebook"),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black54),
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color:Colors.transparent),
                    ))
                ),

              )
          ),
          Container(
              height: 45,
              margin: EdgeInsets.only(top:10),
              width: 270,
              child:ElevatedButton.icon(
                onPressed:(){},
                icon: Icon(Icons.golf_course_outlined,size: 24,),
                label: Text("Login With Google    "),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black54),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color:Colors.transparent),
                    )),
                ),

              )
          ),
          Container(
              height: 40,
              margin: EdgeInsets.only(top:10),
              width: 300,
              child:Row(
                children: [
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top:10,left: 45),
                    child: Text("Don't have account?",style: TextStyle(fontFamily: 'FontMain',fontSize: 16 ),),
                  ),
                  Container(
                      height: 50,
                      margin: EdgeInsets.only(top:10,left: 5),
                      child: new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                        },
                        child: Text('Sign Up',style: TextStyle(fontFamily: 'FontMain',fontSize: 16,color: Colors.orangeAccent, ),),
                      )

                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

