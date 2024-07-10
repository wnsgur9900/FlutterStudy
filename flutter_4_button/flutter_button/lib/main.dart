import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.purple),
      home: const Button(),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Button Example',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                foregroundColor: Colors.white, //글자 색상 텍스트 상자로도 변경 가능
                fixedSize: const Size(200, 30), //박스 사이즈
                elevation: 0, //그림자 효과 정도
              ),
              child: const Text(
                'Elevated button',
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.red, width: 3.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(250, 30),
              ),
              child: const Text('Outlined button'),
            ),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                foregroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(200, 30),
              ),
              child: const Text("Filled button"),
            ),
            FilledButton.tonal(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue),
              child: const Text("Filled button tonal"),
            ),
            Container(
              width: 150,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.deepPurple, Colors.blue]),
              ),
              child: const Text(
                'Filled button',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              //TextButton은 사이즈가 글짜 크기로 정해짐
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
                backgroundColor: const Color.fromARGB(255, 201, 129, 221),
              ),
              child: const Text('Text button'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_rounded,
                size: 40,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            //무조건 Scaffold 바로 위에 와야함
            onPressed: () {},
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            backgroundColor: Colors.red,
            child: const Icon(Icons.add, color: Colors.white, size: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            backgroundColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            label: const Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
