// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart' ;
class XoGame  extends StatefulWidget {
  @override
  State<XoGame> createState() => _XoGameState();
  String player1;
  String player2;
  XoGame({Key? key, required this.player1,required this.player2}) : super(key: key);

}

class _XoGameState extends State<XoGame> {
  List<String> symbols= ['','','','','','','','',''] ;
  bool isX = true ;
  int scoreX= 0;
  int scoreO= 0;
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton (
          onPressed: (){
            Navigator.pop(context,XoGame);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),

        ) ,
        title: const Text( 'XO Gaming'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Expanded(
                  child: Center(
                    child: Text(
                      '${widget.player1}\n(X) \nScore: $scoreX' ,
                      style: const TextStyle (color: Colors.black , fontWeight: FontWeight.bold, fontSize: 25,),),
                  ),
                )  ,
                Expanded(
                  child: Center(
                    child: Text('${widget.player2}\n(O) \nScore: $scoreO' ,
                      style: const TextStyle (color: Colors.black , fontWeight: FontWeight.bold, fontSize: 25,),
                    ),
                  ),
                )  ,
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      onButtonClick(0) ;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red , width: 2)
                      ),
                      child: Center(child: Text(symbols[0],
                        style: const TextStyle (color: Colors.white, fontSize: 50 , fontWeight: FontWeight.bold),)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){onButtonClick(1) ;} ,
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red , width: 2)
                      ),
                      child: Center(child: Text(symbols[1],
                        style: const TextStyle (color: Colors.white, fontSize: 50 , fontWeight: FontWeight.bold),
                      )
                      ),

                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      onButtonClick(2);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red , width: 2)
                      ),
                      child: Center(child: Text(symbols[2],
                        style: const TextStyle (color: Colors.white, fontSize: 50 , fontWeight: FontWeight.bold),
                      )
                      ),

                    ),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      onButtonClick(3);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red , width: 2)
                      ),
                      child: Center(child: Text(symbols[3],
                        style: const TextStyle (color: Colors.white, fontSize: 50 , fontWeight: FontWeight.bold),)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      onButtonClick(4);
                    } ,
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red , width: 2)
                      ),
                      child: Center(child: Text(symbols[4],
                        style: const TextStyle (
                            color: Colors.white,
                            fontSize: 50 ,
                            fontWeight: FontWeight.bold
                        ),
                      )
                      ),

                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      onButtonClick(5);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red , width: 2)
                      ),
                      child: Center(child: Text(symbols[5],
                        style: const TextStyle (color: Colors.white, fontSize: 50 , fontWeight: FontWeight.bold),
                      )
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      onButtonClick(6);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red , width: 2)
                      ),
                      child: Center(child: Text(symbols[6],
                        style: const TextStyle (color: Colors.white, fontSize: 50 , fontWeight: FontWeight.bold),
                      )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      onButtonClick(7);
                    } ,
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red , width: 2)
                      ),
                      child: Center(child: Text(symbols[7],
                        style: const TextStyle (color: Colors.white, fontSize: 50 , fontWeight: FontWeight.bold),
                      )
                      ),

                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      onButtonClick(8);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red , width: 2)
                      ),
                      child: Center(child: Text(symbols[8],
                        style: const TextStyle (color: Colors.white, fontSize: 50 , fontWeight: FontWeight.bold),
                      )
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
  int counter  = 0 ;
  void onButtonClick(int i){
    if(symbols[i].isNotEmpty)
    {return ;}
    if(isX==true) {
      symbols[i] ='X';
    } else{
      symbols[i]='O';
    }
    counter++;
    winner() ;
    isX =! isX;
    setState(() {});
  }
  void winner( ){
    if(symbols[0]==symbols[1]&&symbols[1]==symbols[2]&&symbols[0]!=''){
      init();
    }
    else if(symbols[3]==symbols[4]&&symbols[4]==symbols[5]&&symbols[3]!=''){
      init( );
    }
    else if(symbols[6]==symbols[7]&&symbols[7]==symbols[8]&&symbols[6]!=''){
      init( );
    }
    else if(symbols[0]==symbols[3]&&symbols[3]==symbols[6]&&symbols[0]!=''){
      init( );
    }
    else if(symbols[1]==symbols[4]&&symbols[4]==symbols[7]&&symbols[1]!=''){
      init( );
    }
    else if(symbols[2]==symbols[5]&&symbols[5]==symbols[8]&&symbols[2]!=''){
      init( );
    }
    else if(symbols[0]==symbols[4]&&symbols[4]==symbols[8]&&symbols[0]!=''){
      init( );
    }
    else if(symbols[2]==symbols[4]&&symbols[4]==symbols[6]&&symbols[2]!=''){
      init( );
    }
    else if( counter==9){
      init();
    }
    setState(() {});

  }
  void init( ) {
    if(counter !=9 ){
      if(isX==true) {
        scoreX++ ;
      }else{
        scoreO++ ;
      }
      isX=!isX;
    }
    symbols=['','','','','','','','',''];
    counter=0 ;
    setState(() {  });
  }

}