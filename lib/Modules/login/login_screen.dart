import 'package:flutter/material.dart';
import 'package:news_app/news_layout.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: "Email Address",
                      // hintText: "Email Address"
                      // border: InputBorder.none // will remove under line
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    // below decoration code would help you in designing the login error UI properly
                    decoration: InputDecoration(  
                            errorBorder:const OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))), 
                            errorStyle: const TextStyle(color: Colors.red),
                            errorText:"password cannot be empty" ,
                            focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(width: 2.0, color: Colors.white),
                                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                            focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                            enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                            labelStyle: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                            hintStyle: const TextStyle(color: Colors.white),
                            labelText: "Password",
              ),
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () {
                        print(emailController.text + " " + passwordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NewsLayout()),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don\'t have an account"),
                      const SizedBox(
                        width: 10.0,
                      ),
                      TextButton(onPressed: () {}, child: Text('Register Now'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
