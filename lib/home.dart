import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'rightkeys',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Column(
              children: [
                Text(
                  'rightpossible.com',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 1, 1, 39),
                  ),
                ),
                Text(
                  'sign in',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Input Email'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Input Password'),
                )
              ],
            ),
            SizedBox(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Forget password',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: TextButton(
                      onPressed: null,
                      style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 1, 1, 39),
                          foregroundColor: Colors.blue,
                          elevation: 5,
                          padding: const EdgeInsets.symmetric(horizontal: 33)),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Does not have an account ?',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 1, 1, 39),
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
