// import 'package:flutter/material.dart';

// void main()=>runApp(HomeScreen());

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Home Screen',
//       home: AppBar(),
//     );
//   }
// }

// class Appbar extends StatelessWidget {
//   const Appbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Plantect'),),
//         body: const Center(
//         child: Text('My Page!'),
//       ),
//       drawer: Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text('Drawer Header'),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text('Item 2'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//            ),
//       ),
//        );
    
//   }
// }

import 'package:ecohacks/screens/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:core';

import 'package:ecohacks/screens/Login_Screen.dart';
import 'package:ecohacks/screens/Home_Screen.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:html';
import 'package:ecohacks/screens/Splash_Screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyD1J-_J6GdlAtJpL5k0HVdJIcGy_n4Cwb0",
    authDomain: "ecohacks-9759f.firebaseapp.com",
    projectId: "ecohacks-9759f",
    storageBucket: "ecohacks-9759f.appspot.com",
    messagingSenderId: "351466468403",
    appId: "1:351466468403:web:c0ad776752e00c0e6f9f46"
    )
  );
  runApp(HomeScreen());
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const appTitle = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: HomeScree(title: appTitle),
    );
  }
}

class HomeScree extends StatelessWidget {
  const HomeScree({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:  AppBar( title:Image.asset('assets/Group1.png'),  backgroundColor: Color(0xFF5BEA18),), 
      
      backgroundColor: Color(0xFFD9ECD0),
      
     
      body:
      
      Container(
      
   padding: EdgeInsets.fromLTRB(10,10,10,0),
   height: 220,
   width: double.maxFinite,
   
   child: Card(
     elevation: 5,
      
     child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
     
       
         
          
          children:<Widget>[  
            
            Container(  
              margin: EdgeInsets.all(20.0),  
              padding: EdgeInsets.all(12.0),  
              // decoration:BoxDecoration(  
              //     borderRadius:BorderRadius.circular(8),  
              //     // color:Colors.red  
              // ),  
              child: Image.asset('assets/logo.png'),  
            ),  
            Container(  
              // child:Text("Plantect 1",style: TextStyle(color:Color(0xFF5BEA18),fontSize:30),),
              
              margin: EdgeInsets.all(20.0),  
              padding: EdgeInsets.all(12.0),  
              // decoration:BoxDecoration(  
              //     borderRadius:BorderRadius.circular(8),  
              //     color:Colors.red  
              // ), 
              // 
        
              child:
              Row(
                
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: const <Widget>[
   
    Icon(
      Icons.share,
      color: Colors.black,
      size: 36.0,
      
      semanticLabel: 'Text to announce in accessibility modes',
    ),
     Padding(padding: EdgeInsets.all(12.0), ),
    Icon(
      Icons.delete,
      color: Colors.black,
      size: 36.0,
    ),
    Padding(padding: EdgeInsets.all(12.0), ),
    Icon(
      Icons.edit,
      color: Colors.black,
      size: 36.0,
    ),
  ],
)
            ),  
              CreateButton() 
          ]  
      
      
    
      
     
     
    ) , 
   
 
 ),

      ),
        
    
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.all(10),
          children: [
             Image.asset('assets/Group1.png'),
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Color(0xFF5BEA18),
            //   ),
            //   child: Text(''),
             
              
            // ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){ return Home() ;}),);
      }),
      style: OutlinedButton.styleFrom(
            
            side: BorderSide(width: 2.0, color: Color(0xFF5BEA18), ),
            // padding: const EdgeInsets.all(25),
            padding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
            shape: StadiumBorder(),
            
           ),
           
           
            child: Text('Upload',
            style: TextStyle(color: Color(0xFF5BEA18), fontSize: 11.0,),)
           
            // child: Align(
            //   child: Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0)),
            // ),

            
            
           
           
           
    );
    
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  String? user;
  String? imgUrl;

  uploadToStorage(){
    FileUploadInputElement input = FileUploadInputElement();
    FirebaseStorage fs= FirebaseStorage.instance;
    input.accept = '.png,.jpg';
    input.click();
    
    input.onChange.listen((event){
      
      final file = input.files!.first;
      final path = '${file.name}';
      print(path);
      final reader = FileReader();
      reader.readAsDataUrl(file);
      print(file);
      print(reader);
      reader.onLoadEnd.listen((event) async {
        var snapshot = await fs.ref().child(path).putBlob(file);
        String downloadUrl = await snapshot.ref.getDownloadURL();
        print(downloadUrl);
        setState((){
          imgUrl = downloadUrl;
        });
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot){
        // if(snapshot.hasError){
        //   return Center(
        //     // debugPrint(snapshot),
        //     child: Text('Went Wrong'),
        //   );
        // }
        if(snapshot.connectionState==ConnectionState.done){
          return Scaffold(
            body: Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: [
                 Placeholder(
                    fallbackHeight: 200,
                    fallbackWidth: 400,
                   )
                   ,
                  Container(
                    height: 500,
                    width: 500,
                    child: Image.asset('assets/Group1.png')
                   ),
                   SizedBox(
                    height: 50,
                   ),
                   OutlinedButton(
                      onPressed: ()=> uploadToStorage(),
                     style: OutlinedButton.styleFrom(
            
            side: BorderSide(width: 2.0, color: Color(0xFF5BEA18), ),
            // padding: const EdgeInsets.all(25),
            padding: const EdgeInsets.fromLTRB(100, 25, 100, 25),
            shape: StadiumBorder(),
            
           ),
           
           
            child: Text('Upload',
            style: TextStyle(color: Color(0xFF5BEA18), fontSize: 11.0,),)
           
            // child: Align(
            //   child: Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0)),
            // ),

            
            
           
           
           
    
                   ),
              ],
            )
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}