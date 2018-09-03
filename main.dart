import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(home:TicTacToe()));

bool lose=true;
String choice=' ';
String box=' ';

List <String> l= new List(9);




 class TicTacToe extends StatefulWidget {
  @override
  TicTacToeState createState() {
    return new TicTacToeState();
  }
}
 class TicTacToeState extends State<TicTacToe> {
  Color cellColor=Colors.redAccent;

  Text cellText=Text(' ')  ;
GridCell makeGridCell(index){
    return GridCell(
      index: index,
      color: cellColor,
      text: cellText,
    );
}

  listMyWidgets(i) {
    for (int i = 0; i < 9; i++) {
      makeGridCell(i);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Tic Tac Toe')),
        body: Column(
          children: <Widget>
          [Container(
          height: 400.0,
          child:GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          children:cells
            )),
      Container(
      color: Colors.greenAccent,
      height: 150.0,
      width: 200.0,
      child: Center(
      child:  Text(box),
      ) 
      
     )
      ] )) ;
            }
          
           
  }
  
List<GridCell> cells=List.generate(9,(int index){
               return new GridCell(
                index:index,
                    color:  Colors.blue,
                    text: Text(' ')
                  );
            });

class GridCell extends StatefulWidget {
  final Color color;
 final Text text;
   final int index;


  GridCell({Key key, this.color,this.text,this.index}) : 
  super(key: key);

  @override
  GridCellState createState() {
    return new GridCellState();
  }
}
class GridCellState extends State<GridCell> {
  Color cellColor=Colors.white;
  Text cellText=new Text(' ');

  @override
     void initState() {
    super.initState();
    choice;
    cellColor=widget.color;
    cellText=widget.text;
  }

  _getText(){
    setState(() {
        
      if (choice=='X'){
      choice='O';
    }
else{
  choice='X';
}});
          
      

}
GridCell makeGridCell(index){
    return GridCell(
      index: index,
      color: cellColor,
      text: cellText,
    );
}

  listMyWidgets(m) {
    for (int i = 0; i < m; i++) {
      makeGridCell(i);
    }
  }


 sucess(){
  setState((){

     if((l[0]==l[4]&&l[0]==l[8]&&l[4]!=null)|| (l[3]==l[4]&&l[3]==l[5]&&l[4]!=null)||  (l[1]==l[4]&&l[1]==l[7]&&l[4]!=null)|| (l[2]==l[4]&&l[2]==l[6]&&l[4]!=null)){
     box=l[4]+' wins';
     print("1");
     
     print(box);
    lose=false;
    
  }




if((l[0]==l[1]&&l[1]==l[2]&&l[0]!=null)|| (l[0]==l[3]&&l[0]==l[6]&&l[0]!=null)){
    box=l[0]+' wins';
    print(box);
    print("2");
    lose=false;

  }
 if((l[6]==l[7]&&l[6]==l[8]&&l[8]!=null)||(l[2]==l[8]&&l[2]==l[5]&&l[8]!=null)){
    box=l[8]+' wins';

    print("3");
    print(box);
    lose=false;
  
  }
  main();
 }

 );

 }
 

    
_changeCell(index) {
  _getText();
    setState(() {
      switch (index) {
        case 0:
          cellColor = Colors.yellow;
          cellText = new Text(choice);
          l[index]=choice;
          break;
        case 1:
         cellColor = Colors.yellow;
          cellText = new Text(choice);
          l[index]=choice;


          break;
        case 2:
          cellColor = Colors.yellow;
          cellText = new Text(choice);
          l[index]=choice;


          break;

        case 3:
          cellColor = Colors.yellow;
          cellText = new Text(choice);
          l[index]=choice;

          break;
        case 4:
          cellColor = Colors.yellow;
          cellText = new Text(choice);
          l[index]=choice;


          break;
          case 5:
          cellColor = Colors.yellow;
          cellText = new Text(choice);
          l[index]=choice;
          break;
          case 6:
          cellColor = Colors.yellow;
          cellText = new Text(choice);
          l[index]=choice;

          break;
          case 7:
          cellColor = Colors.yellow;
          cellText = new Text(choice);
           l[index]=choice;


          break;
          case 8:
          cellColor = Colors.yellow;
          cellText = new Text(choice);
          l[index]=choice;

          break;

        
      }
      print(l);
      print(lose);
    });
  
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
     onTap:(){
     _changeCell(widget.index);
      sucess();

     
     },
     child: Container(
       height:20.0,
       color:cellColor,
       child: cellText,
     ),
  );}}
  