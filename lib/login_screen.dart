import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Image.asset('login_bckground.png').color,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/login_bckground.png'),
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                //logo
                const SizedBox(height: 15),
                Text(
                  "Login",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "I miss u",
                  style: GoogleFonts.lato(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 15),
                //username
                Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username/E-mail Address',
                              hintStyle: GoogleFonts.raleway(
                                color: Colors.grey, 
                                fontSize: 15, 
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                const SizedBox(height: 15),
                //pass
                Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: GoogleFonts.raleway(
                                color: Colors.grey, 
                                fontSize: 15, 
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                const SizedBox(height: 15),  
                //login button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text(
                        'Log In',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),  
                //regis button
                Row(
                  children: [
                    Text("No account yet?"),
                    Text("No account yet?"),
                  ],
                )
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
