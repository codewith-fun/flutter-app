import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      shape: ContinuousRectangleBorder(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(80.0),
          topRight: Radius.circular(80.0),
        ),
      ),

    );
  }

  SingleChildScrollView InputData(BuildContext context) {
    return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Please enter your email',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Please enter your password',
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                      SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text("Sign In",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c9078),
                          child: IconButton(
                              onPressed:() {},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                          ),
                        )
                      ],
                    ),
                      SizedBox(height:10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          TextButton(
                              onPressed:() {
                                Navigator.pushNamed(context, 'register');
                              },
                              child: Text("Sign up",style: TextStyle(
                                color: Colors.black,
                                  decoration: TextDecoration.underline
                              ),),),
                          TextButton(
                            onPressed: (){},
                              child: Text("Forgot password?",style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline
                              ),),),

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
