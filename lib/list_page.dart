import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_one/addprod.dart';
import 'package:project_one/produit.dart';
import 'package:project_one/produit_page.dart';
import 'package:localstorage/localstorage.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';






class list_page extends StatefulWidget {
  const list_page({ Key? key }) : super(key: key);

  @override
  _list_pageState createState() => _list_pageState();
}

class _list_pageState extends State<list_page> {

  
  List<produit> userlist = [];


 late final produit product ;

 
  



  @override
  Widget build(BuildContext context) {


      void addproduitinfo( produit pro){
    setState(() {
      userlist.add(pro);
    });
  }

    void Ajouter_product(){
      showDialog(context: context, builder: (_){ 
      return AlertDialog(
        content: addprod(addproduitinfo),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      );
    });
    }




    return SafeArea(child: 
    Scaffold(
      backgroundColor: Colors.yellow[50],
      
      floatingActionButton: ElevatedButton(
        
child: Text("Ajouter produit"),
        
        
        onPressed: Ajouter_product,

        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange[900],
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),)
        )
      
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
    

        
      ),
      appBar: AppBar(
            
            backgroundColor: Colors.brown[400],
        title: Text("Liste des produits ",
        style: TextStyle(color: Colors.white, fontSize: 20),),
        automaticallyImplyLeading: false, 
        actions: <Widget>[
              IconButton(
                icon: Icon(Icons.exit_to_app),
                
                onPressed: (){
                  out();

                  print('out');},
               )
            ],
               
            
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(children: [
               Container(
                 height: MediaQuery.of(context).size.height ,
                 child: ListView.builder(
                   
                   itemBuilder: (context, index){
                     return Card(
                       
                       child: ListTile(
                         onTap: () {
                        Navigator.push( context,    MaterialPageRoute(
                             builder: (context) => produit_page(prod: userlist[index], ind: index,),
                               ),
                                  );
                                 },
                         
                         title: Text(' #  Produit : '+ (index  + 1).toString(),
                         style: TextStyle(color: Colors.black, fontSize: 20, 
                         fontWeight: FontWeight.bold,
                         
                 ),
                 
                 
                 
                 ),
                        
                      
                       ),

                       
                         
                       );
                   },
                   itemCount: userlist.length,
                   ),
               )
              ],)
              ),
          )
    ),
    );
  }


Future out()=> showDialog
(context: context,

               builder: (context) => 
               AlertDialog(
                 
                 
                 title: Text("Attention !!"),
                 
                 content:
                   Container(
                     
                     
                     child:Text("              Vous voulez \n        quitter l'application ?"),
                       
                     
                   ),
                 
                
                 actions: [
                   
                   TextButton(
                     child: Text("Oui"),
                     onPressed: (){
                       SystemNavigator.pop();
                     },
                   ),
                   TextButton(
                     child: Text("Annuler"),
                     onPressed: (){
                       Navigator.of(context).pop();
                       //out().runtimeType;
                       //fermé la boitte de dialogue
                     },
                   )
                   
                 ],
               
              ),
);

}