import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 10, offset: Offset(10, 10))
          ],
        ),
        child: Form(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  suffixIcon: IconButton(
                      onPressed: () {
                        usernameController.clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: passwordHidden,
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.vpn_key_outlined),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordHidden = !passwordHidden;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Log in")),

            ],
          ),
        )),
      ),
    );
  }
}
