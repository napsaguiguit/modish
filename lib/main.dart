import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modish/views/productScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modish',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      routes: {
        '/' : (context) => LoginUIActivity(),
        'product-list' : (context) => ProductScreen(),
      },
    );
  }
}

class LoginUIActivity extends StatelessWidget {
  const LoginUIActivity({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    Size frostGlassSize = MediaQuery.of(context).size;
    double frostGlassCont = frostGlassSize.width * 0.50;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1622495966228-2ca5a82e9900?ixid=MnwxMjA3fDF8MHxzZWFyY2h8MjF8fHVyYmFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'M', 
                        style: GoogleFonts.niconne(
                          fontSize: 60,
                          color: Colors.red
                      )
                      ),
                      TextSpan(
                        text: 'odish', 
                        style: GoogleFonts.niconne(
                          fontSize: 60,
                          color: Colors.white
                        )
                      ),
                      TextSpan(
                        text: '   '
                      ),
                      TextSpan(
                        text: 'L', 
                        style: GoogleFonts.niconne(
                          fontSize: 60,
                          color: Colors.red
                        )
                      ),
                      TextSpan(
                        text: 'ogin', 
                        style: GoogleFonts.niconne(
                          fontSize: 60,
                          color: Colors.white
                        )
                      ),
                      TextSpan(
                        text: '   '
                      ),
                      TextSpan(
                        text: 'F', 
                        style: GoogleFonts.niconne(
                          fontSize: 60,
                          color: Colors.red
                        )
                      ),
                      TextSpan(
                        text: 'orm', 
                        style: GoogleFonts.niconne(
                          fontSize: 60,
                          color: Colors.white
                        )
                      ),
                    ]
                  )
                ),
                SizedBox(height: 90),
                FrostedGlass(
                  width: frostGlassCont * 0.55,
                  height: frostGlassCont * 0.40,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 45),
                        Text(
                          'Login Here',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_rounded, color: Colors.red,),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                              labelText: 'Email'
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_open_sharp, color: Colors.red,),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                              labelText: 'Password'
                            ),
                          ),
                        ),
                        SizedBox(height: 45),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, 'product-list');
                          }, 
                          icon: Icon(
                            Icons.login_rounded, 
                            size: 35, 
                            color: Colors.red,
                          ), 
                          label: Text(''),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.white70
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                              )
                            ),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 15, vertical: 20)
                            ),
                            overlayColor: MaterialStateProperty.all(
                              Colors.white
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height:100),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '© 2018 Modish Login Form. All rights reserved | Design by',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          wordSpacing: 3,
                          letterSpacing: 2.5
                        )
                      ),
                      TextSpan(
                        text: '   '
                      ),
                      TextSpan(
                        text: 'W3layouts',
                        style: GoogleFonts.poppins(
                          color: Colors.red,
                          wordSpacing: 3,
                          letterSpacing: 2.5
                        )
                      )
                    ]
                  )
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

class FrostedGlass extends StatelessWidget {
  final double width, height;
  final Widget child;

  const FrostedGlass({Key? key,required this.width, required this.height, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 30
                )
              ],
              border: Border.all(
                color: Colors.white.withOpacity(0.2),
                width: 1.0
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.2)
                ],
                stops: [0.0,1.0]
              )
            ),
            child: child,
          )
        ],
      ),
    );
  }
}