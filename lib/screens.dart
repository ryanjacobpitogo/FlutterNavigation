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
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) => const ScreensPitogo1())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
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


class ScreensPitogo1 extends StatelessWidget {
  const ScreensPitogo1({super.key});
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column( 
                children:[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                    child: Container(
                      height: 125,
                      width: double.infinity,
                      color : Colors.grey[400]
                    ),
                  ), 
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                    child: Container(
                      height: 125,
                      width: double.infinity,
                      color : Colors.grey[600]
                    ),
                  ), 
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                    child: Container(
                      height: 125,
                      width: double.infinity,
                      color : Colors.grey[600]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                    child: Container(
                      height: 125,
                      width: double.infinity,
                      color : Colors.grey [400]
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                                MaterialPageRoute(builder: (context) =>  const LoginScreen())
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 49.0, vertical: 10.0),
                            child: Center(
                              child: Text(
                                'Back',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                                MaterialPageRoute(builder: (context) => const ScreensPitogo2())
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 49, vertical: 10.0),
                            child: Center(
                              child: Text(
                                'Next',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]
            ),
          ),
        )
      )
    );
  }
}

class ScreensPitogo2 extends StatelessWidget {
  const ScreensPitogo2({super.key});
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              children: [
                Row( 
                    children:[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                        child: Container(
                          height: 97,
                          width: 97,
                          color : Colors.grey[400]
                        ),
                      ), 
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                        child: Container(
                          height: 97,
                          width: 97,
                          color : Colors.grey[600]
                        ),
                      ), 
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                        child: Container(
                          height: 97,
                          width: 97,
                          color : Colors.grey[400]
                        ),
                      ),
                  ]
                  
                ),
                Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                                MaterialPageRoute(builder: (context) =>  const ScreensPitogo1())
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 10.0),
                            child: Center(
                              child: Text(
                                'Back',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                                MaterialPageRoute(builder: (context) => const ScreensPitogo3())
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 10.0),
                            child: Center(
                              child: Text(
                                'Next',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        )
      )
    );
  }
}

class ScreensPitogo3 extends StatelessWidget {
  const ScreensPitogo3({super.key});
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column( 
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                      child: Container(
                        height: 105,
                        width: 105,
                        color : Colors.grey[400]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                      child: Container(
                        height: 105,
                        width: 105,
                        color : Colors.grey[600]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                      child: Container(
                        height: 105,
                        width: 105,
                        color : Colors.grey[400]
                      ),
                    )
                  ],
                ), 
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30.0),
                  child: Container(
                    height: 125,
                    width: double.infinity,
                    color : Colors.grey[400]
                  ),
                ), 
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30.0),
                  child: Container(
                    height: 125,
                    width: double.infinity,
                    color : Colors.grey[600]
                  ),
                ),
                Row( 
                    children:[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(
                              context
                               // MaterialPageRoute(builder: (context) =>  const ScreensPitogo2())
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 137, vertical: 10.0),
                            child: Center(
                              child: Text(
                                'Back',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ]
                ),
              ]
          ),
        )
      )
    );
  }
}