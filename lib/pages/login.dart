import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:glassmorphism/glassmorphism.dart';

import 'Gallery.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/log in (1).png"),
              fit: BoxFit.cover,
            ),
          ),

        ),
          Padding(
            padding: EdgeInsets.only(top: 200,left: 70),
            child: Text(
                "My Gallery",
              style: TextStyle(
                color: Color(0xFF4A4A4A),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment(0,0.4),
            decoration: BoxDecoration(
              boxShadow:[
              BoxShadow(
              color:Colors.grey.withOpacity(0.4),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset (0,3),
              )
              ],
            ),
                child :GlassmorphicContainer(
                  width: 300,
                  height: 350,
                  blur: 5,
                  borderRadius: 26,
                  border: 2,
                  alignment: Alignment(40,700),
                  linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.1),
                      Color(0xFFFFFFFF).withOpacity(0.05),
                      ],
                    stops: [
                      0.1,
                      1,
                    ]),
                    borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
    ],
                    ),
                        child: Center(

                            child: Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: Column(
                                children: [
                                 Text(
                                "LOG IN",
                                style: TextStyle(
                                  color: Color(0xFF4A4A4A),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),

                                 ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    width: 250,
                                   // margin: EdgeInsets.symmetric(horizontal: 40,vertical: 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Color(0xFFF7F7F7),
                                    ),
                                    child: TextField(

                                      decoration: InputDecoration(

                                        hintStyle: TextStyle(
                                          color: Color(0xFF988F8C),
                                        ),
                                        border: InputBorder.none,
                                        hintText: "User Name"
                                      ),

                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    width: 250,
                                    margin: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Color(0xFFF7F7F7),
                                    ),
                                    child: TextField(

                                      decoration: InputDecoration(

                                          hintStyle: TextStyle(
                                            color: Color(0xFF988F8C),
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Password"
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Gallery()),
                                      );
                                    },
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF7BB3FF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "SUBMIT",
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),),
                  ) ,
                ),


    ],
      ),
    );
  }
}
