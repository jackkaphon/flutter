import 'package:flutter/material.dart';
import 'package:lesson1/home_page.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Home(),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Course'),
          NavigationDestination(icon: Icon(Icons.my_library_books), label: 'My Course'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Account'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

// class Home extends StatelessWidget {
//   Home({super.key});
//   int currentPage = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text(
//       //     'ຢາກເປັນເດັບ',
//       //     style: TextStyle(fontFamily: 'NotoSansLao'),
//       //   ),
//       //   backgroundColor: Colors.brown,
//       // ),

//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               debugPrint('');
//             },
//             child: const Text('Looks like a RaisedButton')),
//         // child: Icon(
//         //   Icons.air_sharp,
//         //   color: Colors.amber,
//         // ),
//         //child: Image(image: NetworkImage('https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg')),
//         //child: Image(image: AssetImage('assets/2323.png')),
//         // child: Text(
//         //   'ຢາກເປັນເດັບ',
//         //   style: TextStyle(
//         //       fontSize: 30,
//         //       color: Colors.white,
//         //       fontWeight: FontWeight.bold,
//         //       fontFamily: 'NotoSansLao'),
//         // ),
//       ),
//       //backgroundColor: Colors.black,
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () {},
//       //   backgroundColor: Colors.brown,
//       //   child: const Text('ສະໝັກ', style: TextStyle(fontFamily: 'NotoSansLao')),
//       // ),
//       bottomNavigationBar: NavigationBar(
//         destinations: const [
//           NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
//           NavigationDestination(icon: Icon(Icons.settings), label: 'Setting'),
//         ],
//         onDestinationSelected: (int index){
//           setState((){
//             currentPage = index;
//           });
          
//         },
//       ),
//     );
//   }
// }
