import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.only( left: 0,top: 120),
                child:
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       child: Image.asset('assets/ic_logo.png'),
                       alignment: Alignment.center,
                     )
                   ],
                 )

            ),
            InputData(context)
          ],
        ),
      ),
    );
  }

  SingleChildScrollView InputData(BuildContext context) {
    return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4,left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Login",style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.w700
                      )),
                      Text("Sign in to continue.",style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.normal
                      )),
                      SizedBox(height: 10),

                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Please enter your email',
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          )
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Please enter your password',
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),
                      ),
                      SizedBox(height: 10),
                    Column(
                      children:  [
                        TextButton(onPressed: (){

                        },
                          child:  new TextButton(onPressed: (){
                            Navigator.pushNamed(context, 'register');
                          }, child: Text("Sign In",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700
                          ),

                        ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.black)
                            ),
                          ),
                        ),
                      ],
                    ),
                      SizedBox(height:10),
                      Column(
                        children:  [
                        Text("Forgot password?",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal
                            ),),
                          Text("Sign up",style: TextStyle(
                                color: Colors.black,
                                  fontWeight: FontWeight.normal
                              ),),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Container AppContainer(BuildContext context){
    return Container(
      color: Colors.blueAccent,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.only( left: 33,top: 120),
                child:
                Text('Welcome\nBack', style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),)

            ),
            InputData(context)
          ],
        ),
      ),
    );
  }
}
