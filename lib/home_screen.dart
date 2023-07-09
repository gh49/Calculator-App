import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          "Vampire Bat",
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: onSearchPressed,
          ),
          IconButton(
            icon: const Icon(
              Icons.dangerous
          ),
            onPressed: onDangerPressed,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                  'https://s.abcnews.com/images/Entertainment/HT-negan-walking-dead-jef-161026_4x5_608.jpg'
                ),
              ),
              Container(
                color: Colors.black12,
                child: const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: const Text(
                  "Hi",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.cyan,
                  ),
                ),
              ),
              Container(
                color: Colors.deepOrange,
                child: const Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                color: Colors.black12,
                child: const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: const Text(
                  "Hi",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.cyan,
                  ),
                ),
              ),
              Container(
                color: Colors.deepOrange,
                child: const Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                color: Colors.black12,
                child: const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: const Text(
                  "Hi",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.cyan,
                  ),
                ),
              ),
              Container(
                color: Colors.deepOrange,
                child: const Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                color: Colors.black12,
                child: const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: const Text(
                  "Hi",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.cyan,
                  ),
                ),
              ),
              Container(
                color: Colors.deepOrange,
                child: const Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                color: Colors.black12,
                child: const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: const Text(
                  "Hi",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.cyan,
                  ),
                ),
              ),
              Container(
                color: Colors.deepOrange,
                child: const Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                color: Colors.black12,
                child: const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: const Text(
                  "Hi",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.cyan,
                  ),
                ),
              ),
              Container(
                color: Colors.deepOrange,
                child: const Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.brown,
                  ),
                ),
              ),
              Container(
                color: Colors.black12,
                child: const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: const Text(
                  "Hi",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.cyan,
                  ),
                ),
              ),
              Container(
                color: Colors.deepOrange,
                child: const Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.brown,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSearchPressed() {
    print("Counter: $counter");
    counter++;
  }

  void onDangerPressed() {
    print("Danger Icon Button Pressed");
  }

}