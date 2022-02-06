import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_one/addprod.dart';
import 'package:project_one/list_page.dart';
import 'package:project_one/produit.dart';

class produit_page extends StatelessWidget {


  const produit_page({Key? key, required this.prod , required this.ind ,}) : super(key: key);


final  produit prod;



final int ind;





  
  @override
  Widget build(BuildContext context) {



    
    return SafeArea(child: 
    Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text("Informations du produit :  " + (ind  + 1).toString(),
        style: TextStyle(color: Colors.white, fontSize: 20, 
               )),
      ),
      
      body:
      Center(
        child: Container(
          
          
          

          decoration: BoxDecoration
          (
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [ BoxShadow(
              color: Colors.brown,
              spreadRadius: 20,
              blurRadius: 20,
              offset: Offset(8.0, 7.0),
              
            )],
          ), 
          
          
          margin:  EdgeInsets. only(top:0, left:0, right:0, bottom:10),
        width: 350,
        height: 500,
          child: Column(
            children: [
             Container(
               margin:  EdgeInsets. only(top:10, left:0, right:0, bottom:10),
               child: 
               Text("Référence :" ,style: TextStyle(color: Colors.black, fontSize: 30, 
               fontWeight: FontWeight.bold,
               decoration: TextDecoration.underline,
               )),
             ),
              
             Container(
               margin:  EdgeInsets. only(top:15, left:0, right:0, bottom:10),
               child: 
               Text(prod.codebar.toString() ,style: TextStyle(color: Colors.red[900], fontSize: 30,
               fontWeight: FontWeight.bold, )),
             ),

             Container(
               margin:  EdgeInsets. only(top:40, left:0, right:0, bottom:10),
               child: 
               Text("Date et heur :" ,style: TextStyle(color: Colors.black, fontSize: 30, 
               fontWeight: FontWeight.bold,
               decoration: TextDecoration.underline,
               )),
             ),

             Container(
               margin:  EdgeInsets. only(top:15, left:0, right:0, bottom:10),
               child: 
               Text(prod.date ,style: TextStyle(color: Colors.red[900], fontSize: 30, 
               fontWeight: FontWeight.bold,)),
             ),

             Container(
               margin:  EdgeInsets. only(top:40, left:0, right:0, bottom:10),
               child: 
               Text("Quantité :" ,style: TextStyle(color: Colors.black, fontSize: 30,
               fontWeight: FontWeight.bold,
               decoration: TextDecoration.underline,
                )),
             ),

             Container(
               margin:  EdgeInsets. only(top:15, left:0, right:0, bottom:10),
               child: 
               Text(prod.quantite.toString() ,style: TextStyle(color: Colors.red[900], fontSize: 30, 
               fontWeight: FontWeight.bold,)),
             ),

             

            ],
          ),
        ),
      ),

    ),
    );
  }


}