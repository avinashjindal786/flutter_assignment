
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  final String image;
  final String rating;
  final  String name;
  final String gner;
  ViewPage({required this.image, required this.rating ,required this.name, required this.gner});
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17082a),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.transparent],
                      ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.network(
                      widget.image,
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 30,
                    child: InkWell(
                      onTap: ()
                      {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Image.asset("assets/eva_arrow-ios-back-fill.png"),
                      ),
                    ),
                  ),
                  Positioned(
                      child: Container(child: Text(widget.name,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "Schyler"),maxLines: 2,)),
                  top: 258,
                  left: 30,),
                  Positioned(
                      top: 300,
                      left: 30,
                      child: Container(child: Text(widget.gner,style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 15,fontFamily: "Schyler"),)))
                ],
              ),
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFF210f37),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset("assets/Vector 27.png"),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Color(0xFF210f37),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset("assets/Path-1.png"),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Color(0xFF210f37),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset("assets/Path.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xFF210f37),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/Star 1.png"),
                              SizedBox(width: 3,),
                              Image.asset("assets/Star 1.png"),
                              SizedBox(width: 3,),Image.asset("assets/Star 1.png"),
                              SizedBox(width: 3,),
                              Image.asset("assets/Star 1.png"),
                              SizedBox(width: 3,),

                            ],
                          ),
                          Text("8.4",style: TextStyle(color: Color(0xFFF79E44),fontSize: 22,),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Internet Movie",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 16,fontFamily: "Schyler"),),

                          Text("8.4/10",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 16,fontFamily: "Schyler"),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Database",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 16,fontFamily: "Schyler"),),

                          //Text("8.4/10",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 16,fontFamily: "Schyler"),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rotten Tematoes",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 16,fontFamily: "Schyler"),),

                          Text("94%",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 16,fontFamily: "Schyler"),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Metacritic",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 16,fontFamily: "Schyler"),),

                          Text("78/100",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 16,fontFamily: "Schyler"),)
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xFF210f37),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/Group 357.png"),
                          SizedBox(width: 15,),
                          Text("2019",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 18,),)
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/Vector.png"),
                          SizedBox(width: 15,),
                          Text("United State",style: TextStyle(color: Color(0xFFbcb7c3),fontSize:18,),)
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/Group 358.png"),
                          SizedBox(width: 15,),
                          Text("181 min",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 19,),)
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/Group 356.png"),
                          SizedBox(width: 15,),
                          Text("English",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 22,),)
                        ],
                      ),


                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 350,
                height: 700,
                decoration: BoxDecoration(
                    color: Color(0xFF210f37),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Plot",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Text("After the deversting events of Avangers. Infinity War(2019), the unverty is in ruins",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 15,fontWeight: FontWeight.w100),maxLines: 5,),
                      SizedBox(height: 35,),
                      Text("Director",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Column(
                        children: [
                          Container(
                            width: 170,
                            height: 35,
                            decoration: BoxDecoration
                              (
                              color: Color(0xFF37274b),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: Text("Anthony Russo",style: TextStyle(color: Color(0xFFe1b1d1),fontSize: 15,fontWeight: FontWeight.w400),)),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            width: 170,
                            height: 35,
                            decoration: BoxDecoration
                              (
                              color: Color(0xFF37274b),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: Text("Joe Russo",style: TextStyle(color: Color(0xFFe1b1d1),fontSize: 15,fontWeight: FontWeight.w400),)),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Text("Actor",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Column(
                        children: [
                          Container(
                            width: 170,
                            height: 35,
                            decoration: BoxDecoration
                              (
                              color: Color(0xFF37274b),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: Text("Robert Downey Jr",style: TextStyle(color: Color(0xFFe1b1d1),fontSize: 15,fontWeight: FontWeight.w400),)),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            width: 170,
                            height: 35,
                            decoration: BoxDecoration
                              (
                              color: Color(0xFF37274b),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: Text("Chris Evans",style: TextStyle(color: Color(0xFFe1b1d1),fontSize: 15,fontWeight: FontWeight.w400),)),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
                      Text("Writer",style: TextStyle(color: Color(0xFFbcb7c3),fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Column(
                        children: [
                          Container(
                            width: 170,
                            height: 35,
                            decoration: BoxDecoration
                              (
                              color: Color(0xFF37274b),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: Text("Stephen",style: TextStyle(color: Color(0xFFe1b1d1),fontSize: 15,fontWeight: FontWeight.w400),)),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            width: 170,
                            height: 35,
                            decoration: BoxDecoration
                              (
                              color: Color(0xFF37274b),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: Text("Stan",style: TextStyle(color: Color(0xFFe1b1d1),fontSize: 15,fontWeight: FontWeight.w400),)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 35,),
            ],
          ),
        ),
      ),
    );
  }
}
