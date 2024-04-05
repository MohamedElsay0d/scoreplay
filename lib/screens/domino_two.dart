import "package:flutter/material.dart";

class domino_two extends StatefulWidget {
  String player_1 = "";
  String player_2 = "";
  int endpoint = 0;

  domino_two(this.player_1, this.player_2, this.endpoint);

  @override
  State<domino_two> createState() =>
      _domino_twoState(player_1, player_2, endpoint);
}

class _domino_twoState extends State<domino_two> {
  static var teamA = 0;
  static var teamB = 0;
  String P1 = "";
  String P2 = "";
  int endPiont = 0;

  _domino_twoState(player1, player2, endpoint) {
    this.P1 = player1;
    this.P2 = player2;
    this.endPiont = endpoint;
  }

  TextEditingController scoreOne = TextEditingController();
  TextEditingController scoreTwo = TextEditingController();
  bool isTextFieldFocusedOne = false;
  bool isTextFieldFocusedTwo = false;

  @override
  Widget build(BuildContext context) {

    double screen_width = MediaQuery.of(context).size.width ;
    double screen_height = MediaQuery.of(context).size.height ;

    Future<void> A_win(int end , int tA, int tB) async {
    if (tA >= end && tB < end) {
        return showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text("$P1 won the game" , style: TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0) ,
                  fontWeight: FontWeight.bold ,
                  fontSize: 20 
                ),),
                content: Text("Winner Winner Chicken Dinner" , 
                  style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0) ,
                  fontWeight: FontWeight.bold ,
                  fontSize: 15 
                  ),
                ),
                actions: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                    setState(() {
                      teamB=0 ;
                      teamA=0 ;
                    });
                  }, 
                  child: Text("Play Again")
                ) ,
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pushReplacementNamed("homepage");
                  }, 
                  child: Text("Thanks")
                )
                ],
              ) ;
            }) ;
      } if(tB >= end && tA < end ){
        return showDialog(context: context, builder: (context){
              return AlertDialog(
                 title: Text("$P2 won the game" , style: TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0) ,
                  fontWeight: FontWeight.bold ,
                  fontSize: 20 
                ),),
                content: Text("Winner Winner Chicken Dinner" , 
                  style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0) ,
                  fontWeight: FontWeight.bold ,
                  fontSize: 15 
                  ),
                ),
                actions: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                    setState(() {
                      teamB=0 ;
                      teamA=0 ;
                    });
                  }, 
                  child: Text("Play Again")
                ) ,
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pushReplacementNamed("homepage");
                  }, 
                  child: Text("Thanks")
                )
                ],
              ) ;
            }) ;
      }
      return null ;
}

    Widget Body_App(){
        return          
         SingleChildScrollView(
           child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 90) ,
                // First Row (Two Container)
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Container One in Row One
                      Container(
                      width: (screen_width*(5/12)) ,
                      height: (screen_height*(125/296)),
                      color: Color.fromARGB(151, 189, 225, 236),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            elevation: 80,
                            child: Text(P1 , style: TextStyle(
                              fontWeight: FontWeight.bold ,
                              letterSpacing: 1 ,
                              fontSize: (screen_width*(5/12))*(2/15) , 
                            )
                            ),
                          ) ,
                          Text("$teamA / $endPiont" , style: TextStyle(
                            fontWeight: FontWeight.bold ,
                            letterSpacing: 1 ,
                            fontSize: 25 , 
                            color: Color.fromARGB(255, 6, 21, 230)
                          )
                          ) , 
                          Container( 
                        child: TextFormField(
                          onTapOutside: (event){
                            FocusManager.instance.primaryFocus?.unfocus();
                          }, 
                          onChanged: (val){
                            setState(() {
                              isTextFieldFocusedOne = val.isNotEmpty ;
                            });
                          },
                          controller: scoreOne,
                          maxLength: 5,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true ,
                            fillColor: Colors.white ,
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: isTextFieldFocusedOne ? Color.fromARGB(255, 105, 166, 247) : Color.fromARGB(255, 46, 43, 238)),
                            ),
                            hintText: "score" , 
                            hintStyle: TextStyle(color: Color.fromARGB(255, 230, 11, 11) ,  fontWeight: FontWeight.bold) ,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue , 
                                  width: 10
                                ) ,
                                borderRadius: BorderRadius.all(Radius.circular(25)) ,
                              ) ,
                          ),
                        ),
                      ),
                          ElevatedButton(onPressed: (){
                              int score = int.parse(scoreOne.text) ;
                              setState(() {
                                teamA += score ;
                                scoreOne.text = "" ;
                                A_win(endPiont , teamA , teamB) ;
                              });
                            }, 
                            child: Text("Add")
                        )
                          ],
                        ),
                      ) ,
                    // Container Two in Row one 
                      Container(
                      width: (screen_width*(5/12)) ,
                      height: (screen_height*(125/296)),
                      color: Color.fromARGB(151, 189, 225, 236),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            elevation: 80,
                            child: Text(P2 , style: TextStyle(
                              fontWeight: FontWeight.bold ,
                              letterSpacing: 1 ,
                              fontSize: (screen_width*(5/12))*(2/15) , 
                            )
                            ),
                          ) ,
                          Text("$teamB / $endPiont" , style: TextStyle(
                            fontWeight: FontWeight.bold ,
                            letterSpacing: 1 ,
                            fontSize: 25 , 
                            color: Color.fromARGB(255, 6, 21, 230)
                          )
                          ) , 
                          Container( 
                        child: TextFormField(
                          onTapOutside: (event){
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          onChanged: (val){
                            setState(() {
                              isTextFieldFocusedTwo = val.isNotEmpty ;
                            });
                          },
                          controller: scoreTwo,
                          maxLength: 5,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true ,
                            fillColor: Colors.white ,
                            enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: isTextFieldFocusedTwo ? Color.fromARGB(255, 105, 166, 247) : Color.fromARGB(255, 46, 43, 238)),
                            ),
                            hintText: "score" , 
                            hintStyle: TextStyle(color: Color.fromARGB(255, 230, 11, 11) ,  fontWeight: FontWeight.bold) ,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue , 
                                  width: 10
                                ) ,
                                borderRadius: BorderRadius.all(Radius.circular(25)) ,
                              ) ,
                          ),
                        ),
                      ),
                          ElevatedButton(onPressed: (){
                              int score = int.parse(scoreTwo.text) ;
                              setState(() {
                                teamB += score ;
                                scoreTwo.text = "" ;
                                A_win(endPiont , teamA , teamB ) ;
                              });
                            }, 
                            child: Text("Add")
                        )
                          ],
                        ),
                      ) ,
                  ],
                ) ,
                SizedBox(height: 50) ,
                ElevatedButton( 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87 , 
                  ),
                  onPressed: (){
                    setState(() {
                      teamA = 0; 
                      teamB = 0;  
                    });
                  }, 
                  child: Text("Reset" , style: TextStyle(
                    color: Colors.red ,
                    fontWeight: FontWeight.bold,
                    fontSize: 25 ,
                    
                    ),
                    
                  )
                ) 
              ],
            ),
         ) ;
    }
    
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home : Scaffold( 
        body: Stack(
          children: [
            // Background App
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset("images/dominofour.jfif" , fit: BoxFit.fill,)
              ) ,
            Body_App() ,
          ],
        )      
      ),
    );
  }
}
