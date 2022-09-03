import 'package:ecohacks/screens/Login_Screen.dart';
import 'package:flutter/material.dart';


void main()=>runApp(SplashScreen());

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      home: Scaffold(
        backgroundColor: Color(0xFFD9ECD0),
        body: new Center(
           
          
          
             
           child: 
              
         new Column(
           mainAxisAlignment: MainAxisAlignment.center,
          
           children: <Widget>[
             
              Image.asset('assets/logo.png'), 
             new Padding(padding: new EdgeInsets.all(10)),
           
         
          // child: Container(Text('HELP')),
          CreateButton(),
          new Padding(padding: new EdgeInsets.all(10)),
          Text('OR'),
          new Padding(padding: new EdgeInsets.all(10)),
          LogIn()],
         
        ),
          
         )
           
        )
           
        
        
      );
    
  }
}

class CreateButton extends StatelessWidget {

  const CreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (() {
        debugPrint('Will Create soon!');
      }),
      style: OutlinedButton.styleFrom(
            
            side: BorderSide(width: 2.0, color: Color(0xFF5BEA18), ),
            // padding: const EdgeInsets.all(25),
            padding: const EdgeInsets.fromLTRB(100, 25, 100, 25),
            shape: StadiumBorder(),
            
           ),
           
           
            child: Text('Create New Account',
            style: TextStyle(color: Color(0xFF5BEA18), fontSize: 21.0,),)
           
            // child: Align(
            //   child: Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0)),
            // ),

            
            
           
           
           
    );
    
  }
}

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
     return OutlinedButton(
      onPressed: (() {
        debugPrint('Will Create soon!');
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){ return LoginScreen();}),
        );
      }),
      
      style: OutlinedButton.styleFrom(
            
            side: BorderSide(width: 2.0, color: Color(0xFF5BEA18), ),
            // padding: const EdgeInsets.all(25),
            padding: const EdgeInsets.fromLTRB(100, 25, 100, 25),
            shape: StadiumBorder(),
            
           ),
           
          
            child: Text('Log In',
            style: TextStyle(color: Color(0xFF5BEA18), fontSize: 21.0,),)
           
            // child: Align(
            //   child: Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0)),
            // ),

            
            
           
           
           
    );
    
  }
}