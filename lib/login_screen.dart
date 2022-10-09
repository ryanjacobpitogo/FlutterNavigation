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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                //logo
                Image.asset(
                  'assets/bearNap.png',
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("\"Your one stop shop for ",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontStyle: FontStyle.italic
                      )
                    ),
                    Text("bear-napping\"",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.brown
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
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
                      color: Colors.brown,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("No account yet?",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold
                      )
                    ),
                   Text(" Click here to register.",
                      style: GoogleFonts.lato(
                         fontWeight: FontWeight.bold,
                         color: Colors.brown
                      ),
                    ),
                    
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
