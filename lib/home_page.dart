import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Size Selector")),
      body: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        child: Wrap(
          spacing:width* 0.05 ,
           runSpacing:height* 0.05 ,
          children: [
          ElevatedButton(
            
            onPressed: (){ snackBar("S");}, child: const Text("S"),),
          ElevatedButton(onPressed: (){snackBar("M");}, child: const Text("M"),),
          ElevatedButton(onPressed: (){snackBar("L");}, child: const Text("L"),),
          ElevatedButton(onPressed: (){snackBar("XL");}, child: const Text("XL"),),
          ElevatedButton(onPressed: (){snackBar("XXL");}, child: const Text("XXL"),),
           ElevatedButton(onPressed: (){snackBar("XXXL");}, child: const Text("XXXL"),),
          
        
        ]),
      ),
    );
  }
  
void colo(){
  
}
  void snackBar( String text){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:  Text(text)),
    );
  }
}