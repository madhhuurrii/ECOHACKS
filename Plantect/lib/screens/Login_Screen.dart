import 'package:firebase_core/firebase_core.dart';
import 'package:ecohacks/screens/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main()=> runApp(LoginScreen());

// final unameController = TextEditingController();
// final passController = TextEditingController();  
String email="";
String pass="";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        backgroundColor: Color(0xFFD9ECD0),
        body: new Center(
           child: new Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logo.png'),
                new Padding(padding: new EdgeInsets.all(10)),
                Padding(  
                  padding: EdgeInsets.fromLTRB(100, 10, 100, 10),  
                  child: TextField(  
                    // controller: unameController,
                    // keyboardType: TextInputType.username,
                    onChanged:(value){
                        email= value;
                      },
                    decoration: InputDecoration(  
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(width: 2.0, color: Color(0xFF5BEA18), ),
                      ),  
                      
                      labelText: 'Email Address',  
                      hintText: 'Enter Your Email Address',  
                    ),  
                  ),  
                ),  
                Padding(  
                  padding: EdgeInsets.fromLTRB(100, 10, 100, 10),  
                  child: TextField(  
                    // controller: passController,
                     style: TextStyle(color: Color(0xFF5BEA18)),
                    obscureText: true,  
                     onChanged: (value){
                  pass=value;
                 },
                    decoration: InputDecoration(  
                      enabledBorder: const OutlineInputBorder(
                         borderSide: const BorderSide(width: 2.0, color: Color(0xFF5BEA18), 
                         ),
            // padding: const EdgeInsets.all(25),
                
           
                      ), 
                    
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ), 
                    
                  ),  
                ),  
 new Padding(padding: new EdgeInsets.all(10)),
                SubmitButton()
            ],
           ),
        ),
      )
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (() async {
        debugPrint('Will Create soon!');

      //  if((uname==unameController.text)&&(pass==passController.text)){
      //     debugPrint('logined in!');
          
      //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){ return HomeScreen() ;}),);
      //  }
      //  else{
      //      Fluttertoast.showToast(
      //                     msg: "Invalid Username or Password");
      //                      debugPrint( unameController.text);
      //                      debugPrint(passController.text);
      //                     unameController.text="";
      //                     passController.text="";
                          
      //  }
      // static Future<String?> mailRegister(String uname,String pass)async{
      //   try{
      //     await FirebaseAuth.instance.createUserWithEmailAndPassword(email: uname, password: pass);
      //     return null;
      //   } on FirebaseAuthException catch(ex){
      //     return "${ex.code}:${ex.message}";
      //   }
      // }
      try {
                     final newUser = await FirebaseAuth.instance.signInWithEmailAndPassword(
                         email: email, password: pass);
                    
                     if (newUser != null) {
                       //successfully login
                       //navigate the user to main page
                       // i am just showing toast message here
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){ return HomeScreen() ;}),);
                     }
                   } catch (e) {print(e);}
        
      }),
      
      style: OutlinedButton.styleFrom(
            
            side: BorderSide(width: 2.0, color: Color(0xFF5BEA18), ),
            // padding: const EdgeInsets.all(25),
            padding: const EdgeInsets.fromLTRB(100, 25, 100, 25),
            shape: StadiumBorder(),
            
           ),
           
          
            child: Text('Log In',style: TextStyle(color: Color(0xFF5BEA18), fontSize: 21.0,),)
           
            // child: Align(
            //   child: Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0)),
            // ),

            
            
           
           
           
    );
    
  }
}
  