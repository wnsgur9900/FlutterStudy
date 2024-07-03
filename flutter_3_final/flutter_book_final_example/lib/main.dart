import 'package:flutter/material.dart';
import 'my_page.dart';

void main() {
  runApp(const MyApp());
}
// change_back_exam

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('widget property'),
      ),
      body: const Center(
        child: MyPage(
          passedColor: Colors.green,
        ),
      ),
    );
  }
}

// final_exam

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(colorSchemeSeed: Colors.purple),
//       home: const MyPage(),
//     );
//   }
// }

// class MyPage extends StatefulWidget {
//   const MyPage({super.key});

//   @override
//   State<MyPage> createState() => _MyPageState();
// }

// class _MyPageState extends State<MyPage> {
//   int initialValue = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Final Variable'),
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Count(counter: initialValue),
//             const SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(
//                     () {
//                       initialValue++;
//                     },
//                   );
//                 },
//                 child: const Text('increase'))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Count extends StatelessWidget {
//   const Count({super.key, required this.counter});
//   final int counter;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'Counter: $counter',
//       style: const TextStyle(fontSize: 25, color: Colors.red),
//     );
//   }
// }
