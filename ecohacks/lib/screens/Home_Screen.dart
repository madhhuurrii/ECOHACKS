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

import 'package:flutter/material.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const appTitle = 'Drawer Demo';

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
      
      appBar:  AppBar( title:Image.asset('assets/Group1.png'), backgroundColor: Color(0xFF5BEA18),), 
      
      backgroundColor: Color(0xFFD9ECD0),
      
     
      body:Container(
        
   padding: EdgeInsets.fromLTRB(10,10,10,0),
   height: 220,
   width: double.maxFinite,
   
   child: Card(
     elevation: 5,
     child:
     new Padding(
 padding: EdgeInsets.all(7),
 child: Stack(
 children: <Widget>[
   Align(
     alignment: Alignment.centerRight,
     child: Stack(
       children: <Widget>[
         Padding(
             padding: const EdgeInsets.only(left: 10, top: 5),
             child: Column(
               children: <Widget>[
                 Row(
                   children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.only(left: 15.0),
                       child: Align(
                           alignment: Alignment.centerLeft,
                          //  child: Icon(
                            
                          //    color: Colors.amber,
                          //    size: 40,
                          //  )
                          child: Text('Plantect 1'),
                          ),
                     )
                   ],
                 )
               ],
             ))
       ],
     ),
   )
 ]),
),
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