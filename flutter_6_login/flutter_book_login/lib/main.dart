import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_book_login/layout.dart';
import 'package:flutter_book_login/my_container.dart';
import 'package:flutter_book_login/my_gradientcontainer.dart';
import 'package:flutter_book_login/my_textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Layout(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final double currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  "Current width: ${currentWidth.toString()}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'images/codingchef.png',
                  width: 150,
                  height: 150,
                )
                    .animate()
                    .fade()
                    .slideY(begin: -3, end: 0)
                    // .animate(
                    //   onPlay: (controller) => controller.repeat(),
                    // )
                    //↑↑↑↑↑ 위의 주석 .animate~~~ 코드 아래에 있는 애니메이션은 무한 루프
                    .shake(
                      hz: 4,
                      curve: Curves.easeInOutCubic,
                      duration: 1800.ms,
                    ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Welcome back!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                )
                    .animate()
                    .fade(
                      delay: 500.ms,
                    )
                    .slideX(begin: -2, end: 0)
                    .tint(color: Colors.purple, delay: 1000.ms),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Sign in to continue",
                  style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                )
                    .animate()
                    .fade(
                      delay: 500.ms,
                    )
                    .slideX(begin: 2, end: 0),
                const SizedBox(
                  height: 25,
                ),
                const MyTextField(hintText: 'Username', obscureText: false)
                    .animate()
                    .fade()
                    .slideX(begin: -3, end: 0, duration: 900.ms),
                const SizedBox(
                  height: 25,
                ),
                const MyTextField(hintText: 'Password', obscureText: true)
                    .animate()
                    .fade()
                    .slideX(begin: 3, end: 0, duration: 900.ms),
                const SizedBox(
                  height: 25,
                ),
                const MyGradientContainer(
                  width: 120,
                  height: 50,
                  beginColor: Colors.yellow,
                  endColor: Colors.orange,
                  radius: 20,
                  icon: Icon(Icons.arrow_forward),
                ).animate().fade(delay: 1000.ms),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ).animate().fade().slideX(
                          begin: -3,
                          end: 0,
                          duration: 300.ms,
                        ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Register now',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ).animate().fade().slideX(begin: 3, end: 0))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Powerd by codingChef',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 11),
                        )
                            .animate()
                            .fade()
                            .slideX(begin: -3, end: 0, delay: 300.ms),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const MyContainer(
                      width: 50,
                      height: 50,
                      backgroundColor: Colors.grey,
                      imagePath: 'images/codingchef3.png',
                      radius: 20,
                    )
                        .animate()
                        .slideX(begin: 3, end: 0, duration: 300.ms)
                        .animate(
                          onPlay: (controller) => controller.repeat(),
                        )
                        .shimmer(
                          delay: 1000.ms,
                          duration: 1800.ms,
                        ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
