import 'dart:math';

import 'package:bmi_calculator/bmi_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  @override
  State<bmi> createState() => _bmrState();
}

class _bmrState extends State<bmi> {
 bool ismale=true;
 double height=160.0;
 int weight=60;
 int age=20;
 bool Them=true;
 String typy='';
 String massge='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BMI Calculator',style: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize:30.0

            ),
            ),

          ],
        ),
        backgroundColor: CupertinoColors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(20.1),
              child: Row (
                children: [
                  Expanded(
                   
                    child: GestureDetector(onTap: (){
                      setState(() {
                        ismale=true;
                      });
                    },
                      child: Container(
                          child: Column(mainAxisAlignment:MainAxisAlignment.center ,

                            children: [
                              Icon(
                                Icons.man_outlined,size: 90.0,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'MALE',style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color:ismale ?Colors.pink:Colors.grey
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(onTap: () {
                      setState(() {
                        ismale=false;
                      });
                    },
                      child: Container(
                          child: Column(mainAxisAlignment:MainAxisAlignment.center ,

                            children: [
                              Icon(
                                Icons.woman_outlined,size: 90.0,
                                color: CupertinoColors.black,

                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'FEMALE',style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: ismale ?Colors.grey:Colors.pink
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child:Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),),
                      Row(crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic
                        ,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900
                          ),),
                          SizedBox(
                            width: 5.5,
                          ),
                          Text(
                            'CM',style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Slider(
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          onChanged:(value){
                            setState(() {
                             height=value;
                            });

                          } )
                    ],
                  ),decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey

                ),
                ),
              )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),),
                          Text(
                            '$age',style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900
                          ),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child:Icon (
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child:Icon (
                                  Icons.add,
                                  color: Colors.white,

                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey

                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),),
                          Text(
                            '$weight',style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900
                          ),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                mini: true,
                                child:Icon (
                                  Icons.remove,
                                  color: Colors.white,

                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight+',
                                mini: true,
                                child:Icon (
                                  Icons.add,
                                  color: Colors.white,

                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey

                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(color: Colors.pink,
            width: double.infinity,
            child: MaterialButton(
              onPressed: (){
                double result= weight / pow(height/ 100, 2);
                if(weight >= 50 && weight<= 75 && height>= 160){
                   typy='Healthe Body';
                   massge='Keep Healthy';
                }
                else if(weight >= 75 && weight<= 110 &&height>160){
                  typy='Fat Body';
                  massge='Time To Workout';
                }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(context) => BMIresult(
                          age:age,
                          ismale: ismale,
                          result: result.round(),
                          type:  typy,
                          massege: massge ,

                        ) ,
                    )
                );
              },
              height: 50.5,
              child: Text(
                  'CALCULATE'
              ),
            ),
          ),
        ],
      ),
    );
  }
}

