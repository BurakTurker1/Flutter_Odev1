import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  Container containerOlustur(String haft,Color renk){
    return Container(
            width: 75,
            height: 75,
            margin: EdgeInsets.only(top: 15),
            color: renk,
            child: Text(haft,style: TextStyle(fontSize: 48,),textAlign: TextAlign.center,),
          );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur('D', Colors.amber.shade400),
        containerOlustur('A', Colors.amber.shade400),
        containerOlustur('R', Colors.amber.shade400),
        containerOlustur('T', Colors.amber.shade400),
      ],
    );
  }
  Column dartColumnOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: containerOlustur('E', Colors.amber.shade400),
        ),
        Expanded(
          child: containerOlustur('S', Colors.amber.shade500),
        ),
        Expanded(
          child: containerOlustur('L', Colors.amber.shade600),
        ),
        Expanded(
          child: containerOlustur('E', Colors.amber.shade700),
        ),
        Expanded(
          child: containerOlustur('R', Colors.amber.shade800),
        ),Expanded(
          child: containerOlustur('İ', Colors.amber.shade900),
        ),
      ],
    );
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        floatingActionButton: buttonMetot(),
        appBar: AppBar(title:Text('Ödev Proje1'),
        backgroundColor: Colors.lightBlue,
        ),
        backgroundColor: Colors.white,


        body: Container(
          color: Colors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
            Expanded(child: dartColumnOlustur()),
            ],
          ),
        ),
        //kendi_yaptigim_odev(),
      ),
    );
  }

  Container kendi_yaptigim_odev() {
    return Container( 
        child: const Column(    
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,      
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Text('D',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,) ,),
                Text('A',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,) ,),
                Text('R',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,) ,),
                Text('T',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,) ,),
              ],
            ),
            Text('E',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,)),
            Text('R',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,)),
            Text('S',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,)),
            Text('L',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,)),
            Text('E',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,)),
            Text('R',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,)),
            Text('İ',style: TextStyle(backgroundColor: Colors.amber,fontSize: 35,))
          ],
        ),
      );
  }

  FloatingActionButton buttonMetot() {
    return FloatingActionButton(
      onPressed: (){
      debugPrint('Tiklandi');
    }, 
       child:Icon (
       Icons.alarm,
       color: Colors.white,
    ),
    backgroundColor: Colors.amber ,
    );
  }
}


