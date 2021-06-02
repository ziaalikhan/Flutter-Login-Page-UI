import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Center(child: Text('Login Page')),
      ),
      body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                  Center(
                    child: Container(
                      width: 450,
                      height: 250,
                      child: Image.asset("assets/login_image.png",)),
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(),
                        hintText: "Enter Your E-mail",
                        labelText: "Email"
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                   Container(
                       width: 300,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(),
                        hintText: "Enter Your Password",
                        labelText: "Password"
                      ),
                    ),
                  ),
                      SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      child: ElevatedButton(onPressed: () {},
                      child: Text("Login") ,),
                    ),
                    
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text("Don't have an Account?"),
                    Text("Sign Up",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold
                    ),
                    )
                  ],)
                ],),
                
              ),
      ),

      ),
      
    );
  }
}