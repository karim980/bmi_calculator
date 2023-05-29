import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIresult extends StatelessWidget {

final int result;
final bool ismale;
final String type;
final String massege;
int age;
BMIresult({
  required this.result,
  required this.ismale,
  required this.age,
  required this.type,
  required this.massege,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: CupertinoColors.black,
        title: Text('result'),
      ),
      body: Center(
        child: Container(height: 300,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.transgender,size: 50,),
                  SizedBox(width: 20,),
                  Text('Gender : ${ismale ? 'Male':'Female'}',style: TextStyle(fontSize: 30),),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [ Icon(Icons.numbers_outlined,size: 50,),
                  SizedBox(width: 20,),
                  Text('Age : $age  ',style: TextStyle(fontSize: 30),),
                ],
              ),
              Text('BMI: $result',style: TextStyle(fontSize: 30),),
              Column(
                children: [
                  Text('Body Type : $type',style: TextStyle(fontSize: 30),),
                  SizedBox(height: 7,),
                  Text('$massege',style: TextStyle(fontSize: 30,color: CupertinoColors.systemRed,fontWeight: FontWeight.w600),),
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.blueAccent,borderRadius: BorderRadius.circular(50),

          )
        ),
      ),
    );

  }
}
