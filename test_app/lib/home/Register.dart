import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'),fit: BoxFit.cover),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Stack(
          children: [
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
            padding: EdgeInsets.only(top: 60,left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Create new \nAccount",style: TextStyle(
                    color: Colors.black,
                    fontSize: 33,
                    fontWeight: FontWeight.w700
                )),
                Text("Already account? Login here.",style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.normal
                )),
                SizedBox(height: 10),

                TextField(
                  decoration: InputDecoration(
                      hintText: 'Laxmi kant',
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
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'laxmipalkant01@gmail.com',
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
                      hintText: '*********',
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
                  decoration: InputDecoration(
                      hintText: 'Date of birth',
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                  child: Column(
                    children:  [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'home');
                        }, child: Text("Sign Up",
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

                    ],
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
