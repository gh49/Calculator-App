import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          "Log In",
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30.0),
              child: const Text(
                "Log In",
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  labelText: "Email",
                  hintText: "someone@example.com",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffix: Icon(
                    Icons.remove_red_eye,
                  ),
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                print(emailController.value.text);
                print(passwordController.value.text);
              },
              child: const Text(
                "Log In",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Forgot your password?"
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text(
                      "Reset your account!"
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
