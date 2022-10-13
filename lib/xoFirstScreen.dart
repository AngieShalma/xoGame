import 'package:flutter/material.dart';
import 'package:xo_advanced/xoHomeScreen.dart';

class login extends StatefulWidget{
  State<login> createState()=>_login();
}
class _login extends State<login>{
  late String player1;
  late String player2;
  GlobalKey<FormState> _formkay=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          centerTitle:true,
          title: Text("XO Game"),
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w900),
        ),
        body:Form(
          key:_formkay,
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              padding:EdgeInsetsDirectional.all(15) ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 100,),
                  TextFormField(
                    strutStyle:const StrutStyle(fontSize:20,fontWeight: FontWeight.bold,) ,
                    cursorColor: Colors.deepOrange,
                    style: const TextStyle(color: Colors.blue),
                    decoration: const InputDecoration(
                        border:OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 5),
                            borderRadius : BorderRadius.all(Radius.circular(20))),
                        hintText: "Name for X player",
                        hintStyle: TextStyle(color: Colors.blue),
                        prefixIcon: Icon(Icons.person,color: Colors.blue,)
                    ),
                    showCursor:true,
                    onChanged: (value){
                      player1=value;
                    },
                    validator: (player1){
                      if(player1==null || player1.isEmpty){
                        return"Enter Name";
                      }else{
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    strutStyle:const StrutStyle(fontSize:20,fontWeight: FontWeight.bold,) ,
                    cursorColor: Colors.deepOrange,
                    style: const TextStyle(color: Colors.blue),
                    decoration: const InputDecoration(
                        border:OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 5),
                            borderRadius : BorderRadius.all(Radius.circular(20))),
                        hintText: "Name for O player",
                        hintStyle: TextStyle(color: Colors.blue),
                        prefixIcon: Icon(Icons.person,color: Colors.blue,)
                    ),
                    showCursor:true,
                    onChanged: (value){
                      player2=value;
                    },
                    validator: (player2){
                      if(player2==null || player2.isEmpty){
                        return"Enter Name";
                      }else{
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.lightBlue,
                      ),
                      child: Text("Play",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    onTap: (){
                      if(_formkay.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder:(context){
                          return XoGame(player1: player1,player2: player2,);
                        }));
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        )
    );
  }

}