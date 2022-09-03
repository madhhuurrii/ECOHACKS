// import 'package:flutter/material.dart';

// void main() => runApp(const AppBarApp());

// class AppBarApp extends StatelessWidget {
//   const AppBarApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: AppBarExample(),
//     );
//   }
// }

// class AppBarExample extends StatelessWidget {
//   const AppBarExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text("AppBar Demo"),),
//         backgroundColor: Color(0xFF5BEA18),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.add_alert),
//             tooltip: 'Show Snackbar',
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text('This is a snackbar')));
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.navigate_next),
//             tooltip: 'Go to the next page',
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute<void>(
//                 builder: (BuildContext context) {
//                   return Scaffold(
//                     appBar: AppBar(
//                       title: const Text('Next page'),
//                     ),
//                     body: const Center(
//                       child: Text(
//                         'This is the next page',
//                         style: TextStyle(fontSize: 24),
//                       ),
//                     ),
//                   );
//                 },
//               ));
//             },
//           ),
//         ],
//       ),
//       body: const Center(
//         child: Text(
//           'This is the home page',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

import 'package:ecohacks/screens/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ecohacks/screens/Splash_Screen.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});
   
  //  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
     @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecohacks',
      home: SplashScreen(),
      // FutureBuilder(
      //   future: _initialization,
      //    builder: (context, snapshot){
      //     if(snapshot.hasError){
      //       print("Error");
      //      }
      //      if(snapshot.connectionState==ConnectionState.done){
      //       return SplashScreen();
              
      //    }
      //    return CircularProgressIndicator();
      //    },
      //    ),
    );
  }
}