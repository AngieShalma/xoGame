import 'package:flutter/material.dart';

class XOAdvanced extends StatefulWidget {
  const XOAdvanced({Key? key}) : super(key: key);

  @override
  _XOAdvancedState createState() => _XOAdvancedState();
}

class _XOAdvancedState extends State<XOAdvanced> {

  List<String> symbols = ['', '', '', '', '', '', '', '', '',];
  bool isXTurn = true;
  setText({required int index,required BuildContext context}) {
    if (i < 8) {
      if (symbols[index].isEmpty) {
        i++;
        symbols[index] = isXTurn ? 'X' : 'O';
        isXTurn = !isXTurn;
        setState(() {});
      } else {
        return;
      }
      if (symbols[0] == symbols[1] && symbols[1] == symbols[2]&&symbols[0]!='') {
        print('Player : ${symbols[0]} was won');
        symbols = ['', '', '', '', '', '', '', '', '',];
      } else if (symbols[0] == symbols[1] && symbols[1] == symbols[2]&&symbols[0]!='') {
        print('Player : ${symbols[0]} was won');
        symbols = ['', '', '', '', '', '', '', '', '',];
      } else if (symbols[3] == symbols[4] && symbols[4] == symbols[5]&&symbols[3]!='') {
        print('Player : ${symbols[3]} was won');
        symbols = ['', '', '', '', '', '', '', '', '',];
      } else if (symbols[6] == symbols[7] && symbols[7] == symbols[8]&&symbols[6]!='') {
        print('Player : ${symbols[6]} was won');
        symbols = ['', '', '', '', '', '', '', '', '',];
      } else if (symbols[0] == symbols[3] && symbols[3] == symbols[6]&&symbols[0]!='') {
        print('Player : ${symbols[0]} was won');
        symbols = ['', '', '', '', '', '', '', '', '',];
      } else if (symbols[1] == symbols[4] && symbols[4] == symbols[7]&&symbols[1]!='') {
        print('Player : ${symbols[1]} was won');
        symbols = ['', '', '', '', '', '', '', '', '',];
      } else if (symbols[2] == symbols[5] && symbols[5] == symbols[8]&&symbols[2]!='') {
        print('Player : ${symbols[2]} was won');
        symbols = ['', '', '', '', '', '', '', '', '',];
      } else if (symbols[0] == symbols[4] && symbols[4] == symbols[8]&&symbols[0]!='') {
        print('Player : ${symbols[0]} was won');
        symbols = ['', '', '', '', '', '', '', '', '',];
      } else if (symbols[2] == symbols[4] && symbols[4] == symbols[6]&&symbols[2]!='') {
        print('Player : ${symbols[2]} was won');
        symbols = ['', '', '', '', '', '', '', '', '',];
      }
    } else if (i==8) {
      showDialog(context: context,
        builder: (ctx) => Dialog(
          child: Container(
            alignment: Alignment.center,
            height: 200,
            padding: const EdgeInsets.all(5),
            child: Column(
              children: const [
                Text('Draw', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black,),),
                Text('Result:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black,),),
              ],
            ),
          ),
        ),
      );
      symbols = ['', '', '', '', '', '', '', '', '',];
      setState(() { });
    }
  }
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing:10,
          crossAxisSpacing:10),
        itemCount: 9,
        itemBuilder: (ctx,index)=>GestureDetector(
          onTap: () {
            setText(index:index,context: context);
          },
          child: Container(alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.red, width: 2)),
            child: Text(symbols[index], style: const TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
