import "package:flutter/material.dart" ;

import "domino_four.dart";
import "domino_two.dart";

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  TextEditingController textOne = TextEditingController(); 
  TextEditingController textTwo = TextEditingController(); 
  TextEditingController textThree = TextEditingController(); 
  TextEditingController textFour = TextEditingController(); 
  TextEditingController textend = TextEditingController();

  String player_1 = ""; 
    String player_2 = ""; 
    String player_3 = ""; 
    String player_4 = ""; 
 
    void showDialogTwo() { 
      showDialog( 
        context: context, 
        builder: (BuildContext context) { 
          return AlertDialog( 
            title: Text("Enter Players’ Names"), 
            content: SingleChildScrollView( 
              child: Column( 
                children: [ 
                  Padding( 
                    padding: const EdgeInsets.only(bottom: 8.0), 
                    child: TextField( 
                      maxLength: 10, 
                      controller: textOne, 
                      keyboardType: TextInputType.name, 
                      decoration: InputDecoration( 
                        hintText: 'Name of Player 1', 
                        hintStyle: TextStyle(color: Colors.grey), 
                        prefixIcon: Icon(Icons.person), 
                        border: OutlineInputBorder( 
                          borderSide: BorderSide( 
                            color: Colors.blue, 
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(25)), 
                        ), 
                      ), 
                    ), 
                  ), 
                  TextField( 
                    maxLength: 10, 
                    controller: textTwo, 
                    keyboardType: TextInputType.name, 
                    decoration: InputDecoration( 
                      hintText: 'Name of Player 2', 
                      hintStyle: TextStyle(color: Colors.grey), 
                      prefixIcon: Icon(Icons.person), 
                      border: OutlineInputBorder( 
                        borderSide: BorderSide( 
                          color: Colors.blue, 
                        ), 
                        borderRadius: BorderRadius.all(Radius.circular(25)), 
                      ), 
                    ), 
                  ), 
                  Padding( 
                    padding: const EdgeInsets.only(top: 8.0), 
                    child: TextField( 
                      maxLength: 10, 
                      controller: textend, 
                      keyboardType: TextInputType.name, 
                      decoration: InputDecoration( 
                        hintText: 'Enter End point', 
                        hintStyle: TextStyle(color: Colors.grey), 
                        prefixIcon: Icon(Icons.adjust), 
                        border: OutlineInputBorder( 
                          borderSide: BorderSide( 
                            color: Colors.blue, 
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(25)), 
                        ), 
                      ), 
                    ), 
                  ), 
                ], 
              ), 
            ), 
            actions: [ 
              Row( 
                children: [Padding( 
                    padding: const EdgeInsets.only(right: 10), 
                    child: ElevatedButton( 
                      child: Text("Cancel"), 
                      onPressed: () { 
                        Navigator.of(context).pop(); 
                      }, 
                    ), 
                  ), 
                  ElevatedButton( 
                    onPressed: () { 
                      var fieldOne = textOne.text; 
                      var fieldTwo = textTwo.text; 
                      var fieldend = int.parse(textend.text); 
                      Navigator.pushReplacement( 
                        context, 
                        MaterialPageRoute( 
                            builder: (context) => 
                                domino_two(fieldOne, fieldTwo, fieldend)), 
                      ); 
                    }, 
                    child: Text("Start"), 
                  ), 
                ], 
              ), 
            ], 
          ); 
        }, 
      ); 
      
    }

  
    void showDialogFour() { 
      showDialog( 
        context: context, 
        builder: (BuildContext context) { 
          return AlertDialog( 
            title: Text("Enter Players’ Names"), 
            content: SingleChildScrollView( 
              child: Column( 
                children: [ 
                  Padding( 
                    padding: const EdgeInsets.only(bottom: 8.0), 
                    child: TextField( 
                      controller: textOne, 
                      keyboardType: TextInputType.name, 
                      decoration: InputDecoration( 
                        hintText: 'Name of Player 1', 
                        hintStyle: TextStyle(color: Colors.black), 
                        prefixIcon: Icon(Icons.person), 
                        border: OutlineInputBorder( 
                          borderSide: BorderSide( 
                            color: Colors.blue, 
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(25)), 
                        ), 
                      ), 
                    ), 
                  ), 
                  Padding( 
                    padding: const EdgeInsets.only(bottom: 8.0), 
                    child: TextField( 
                      controller: textTwo, 
                      keyboardType: TextInputType.name, 
                      decoration: InputDecoration( 
                        hintText: 'Name of Player 2', 
                        hintStyle: TextStyle(color: Colors.black), 
                        prefixIcon: Icon(Icons.person), 
                        border: OutlineInputBorder( 
                          borderSide: BorderSide( 
                            color: Colors.blue, 
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(25)), 
                        ), 
                      ), 
                    ), 
                  ), 
                  Padding( 
                    padding: const EdgeInsets.only(bottom: 8.0), 
                    child: TextField( 
                      controller: textThree, 
                      keyboardType: TextInputType.name, 
                      decoration: InputDecoration( 
                        hintText: 'Name of Player 3', 
                        hintStyle: TextStyle(color: Colors.black), 
                        prefixIcon: Icon(Icons.person), 
                        border: OutlineInputBorder( 
                          borderSide: BorderSide( 
                            color: Colors.blue, 
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(25)), 
                        ), 
                      ),
		), 
                  ), 
                  Padding( 
                    padding: const EdgeInsets.only(bottom: 8.0), 
                    child: TextField( 
                      controller: textFour, 
                      keyboardType: TextInputType.name, 
                      decoration: InputDecoration( 
                        hintText: 'Name of Player 4', 
                        hintStyle: TextStyle(color: Colors.black), 
                        prefixIcon: Icon(Icons.person), 
                        border: OutlineInputBorder( 
                          borderSide: BorderSide( 
                            color: Colors.blue, 
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(25)), 
                        ), 
                      ), 
                    ), 
                  ), 
                  Padding( 
                    padding: const EdgeInsets.only(bottom: 8.0), 
                    child: TextField( 
                      controller: textend, 
                      keyboardType: TextInputType.name, 
                      decoration: InputDecoration( 
                        hintText: 'Enter End_point', 
                        hintStyle: TextStyle(color: Colors.black), 
                        prefixIcon: Icon(Icons.adjust), 
                        border: OutlineInputBorder( 
                          borderSide: BorderSide( 
                            color: Colors.blue, 
                          ), 
                          borderRadius: BorderRadius.all(Radius.circular(25)), 
                        ), 
                      ), 
                    ), 
                  ), 
                ], 
              ), 
            ), 
            actions: <Widget>[ 
              Row( 
                children: <Widget>[ 
                  Padding( 
                    padding: const EdgeInsets.only(right: 10), 
                    child: ElevatedButton( 
                      child: Text("Cancel"), 
                      onPressed: () { 
                        Navigator.of(context).pop(); 
                      }, 
                    ), 
                  ), 
                  ElevatedButton( 
                      onPressed: () { 
                        var fieldOne = textOne.text; 
                        var fieldTwo = textTwo.text; 
                        var fieldThree = textThree.text; 
                        var fieldFour = textFour.text; 
                        var fieldend = int.parse(textend.text); 
                        Navigator.pushReplacement( 
                          context, 
                          MaterialPageRoute( 
                              builder: (context) => domino_four(fieldOne, 
                                  fieldTwo, fieldThree, fieldFour, fieldend)), 
                        ); 
                      }, 
                      child: Text("Go")) 
                ], 
              ), 
            ], 
          ); 
        }, 
      ); 
      
    }
 
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; 
    double screenHeight = MediaQuery.of(context).size.height;

    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 129, 221, 129),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Color.fromARGB(255, 129, 221, 129), 
              width: screenWidth, 
              height: (screenHeight * (165 / 592)),
              child: ElevatedButton( 
                style: ElevatedButton.styleFrom( 
                  backgroundColor: Color.fromARGB(255, 129, 221, 129), 
                  elevation: 0, 
                ), 
                onPressed: () { 
                  showDialogTwo(); 
                }, 
                child: Container(
				height: (screenHeight * (10 / 37)), 
                  width: (screenWidth * (2 / 3)), 
                  decoration: BoxDecoration( 
                    color: Color.fromARGB(255, 129, 221, 129), 
                    borderRadius: BorderRadius.circular(25), 
                  ), 
                  child: Card( 
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(27), 
                    ), 
                    color: Color.fromARGB(255, 65, 152, 69), 
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                      children: [ 
                        Icon( 
                          Icons.person_4_rounded, 
                          size: ((screenWidth * (2 / 3)) * (5 / 16)), 
                          color: Color.fromARGB(255, 0, 0, 0), 
                        ), 
                        Icon(Icons.person_4_rounded, 
                            size: ((screenWidth * (2 / 3)) * (5 / 16)), 
                            color: Color.fromARGB(255, 255, 255, 255)), 
                      ], 
                    ), 
                  ), 
                ), 
              ), 
            ), 

            Container( 
                color: Color.fromARGB(255, 129, 221, 129), 
                width: screenWidth, 
                height: (screenHeight * (165 / 592)), 
                child: ElevatedButton( 
                  style: ElevatedButton.styleFrom( 
                    backgroundColor: Color.fromARGB(255, 129, 221, 129), 
                    elevation: 0, 
                  ), 
                  onPressed: () { 
                    showDialogFour(); 
                  }, 
                  child: Container( 
                    height: (screenHeight * (10 / 37)), 
                    width: (screenWidth * (2 / 3)), 
                    decoration: BoxDecoration( 
                      color: Color.fromARGB(255, 129, 221, 129), 
                      borderRadius: BorderRadius.circular(25), 
                    ), 
                    child: Card( 
                      shape: RoundedRectangleBorder( 
                        borderRadius: BorderRadius.circular(27), 
                      ), 
                      color: Color.fromARGB(255, 65, 152, 69), 
                      child: Column( 
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                        children: [ 
                          Row( 
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                              children: [ 
                                Icon( 
                                  Icons.person_4_rounded, 
                                  size: ((screenWidth * (2 / 3)) * (5 / 16)), 
                                  color: Color.fromARGB(255, 255, 255, 255), 
                                ), 
                                Icon(Icons.person_4_rounded, 
                                    size: ((screenWidth * (2 / 3)) * (5 / 16)), 
                                    color: Color.fromARGB(255, 0, 0, 0)), 
                              ]), 
                          Row( 
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                              children: [ 
                                Icon(Icons.person_4_rounded, 
                                    size: ((screenWidth * (2 / 3)) * (5 / 16)), 
                                    color: Color.fromARGB(255, 255, 1, 1)), 
                                Icon( 
                                  Icons.person_4_rounded, 
                                  size: ((screenWidth * (2 / 3)) * (5 / 16)), 
                                  color: Color.fromARGB(255, 0, 200, 255), 
                                ), 
                              ]), 
                        ], 
                      ), 
                    ), 
                  ), 
                )) 
          ], 
        ), 
      ),
    );
  }
}