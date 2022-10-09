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
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'main',
      home: Home(),
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
              children: [
                // user==null ?
                //  Placeholder(
                //     fallbackHeight: 200,
                //     fallbackWidth: 400,
                //    )
                  //   Container(
                  //   height: 300,
                  //   width: 300,
                  //   child: Image.network(
                  //     imgUrl!,
                  //     fit: BoxFit.contain,
                  //   ),
                  //  ),
                  //  SizedBox(
                  //   height: 50,
                  //  ),
                   OutlinedButton(
                      onPressed: ()=> uploadToStorage(),
                    
                      child: Text("Upload"),
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