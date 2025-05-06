import 'package:flutter/material.dart';
import 'package:signup/newpage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
  backgroundColor: Color.fromARGB(255, 190, 219, 221),
  body: Menu(),
),

    );
  }
}
class Menu extends StatelessWidget {
 Menu({super.key});
 final TextEditingController _namecontoller=TextEditingController();
 final TextEditingController _emailcontroller=TextEditingController();
 final TextEditingController _passwordcontroller=TextEditingController();
 String _namevalue='';
 String _emailvalue='';
 String _passwordvalue='';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: 400,
        
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 200, 10, 0),
              child: TextField(
                controller: _namecontoller,
                onSubmitted: _nameSubmit,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
              color:   const Color.fromARGB(255, 192, 47, 47),
                ),
                decoration: InputDecoration(
                  
                  labelText: '  NAME',
                  hintText: '  VIGNESH',
                     labelStyle: TextStyle(
      fontSize: 30, 
      
     
    ),
                     floatingLabelStyle: TextStyle(
      fontSize: 40,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      
    ),
                  prefixIcon: Icon(Icons.person,size: 40,color: Colors.pink,),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
            child: TextField(
              controller: _emailcontroller,
              onSubmitted: _emailSubmit,
               style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 192, 47, 47),
                  ),
              decoration: InputDecoration(
                hintText: '  vig@gmail.com',
                labelText: '  EMAIL ID',
                 labelStyle: TextStyle(
                  fontSize: 30, 
              
                ),
                                 floatingLabelStyle: TextStyle(
      fontSize: 40,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      
    ),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined,size: 40,color: Colors.pink,),
              ),
            ),
          ),
          ),
            SizedBox(
            height: 40,
          ),
          SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
            child: TextField(
              controller: _passwordcontroller,
              onSubmitted: _passwordSubmit,
               style: TextStyle(
                
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                      color:   const Color.fromARGB(255, 192, 47, 47),
                  ),
              decoration: InputDecoration(
                hintText: '  123Xxy@ty',
                labelText: '  PASSWORD',
                 labelStyle: TextStyle(
                  fontSize: 30, 
              
                ),
                   floatingLabelStyle: TextStyle(
      fontSize: 40,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      
    ),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password_rounded,size: 40,color: Colors.pink,),
              ),
            ),
          ),
          ),
          SizedBox(
            height: 50,
          
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              width: 350,
              height: 60,
              child:TextButton(
                style: TextButton.styleFrom(
                   backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
             
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                ),
                onPressed: (){
                  _nameSubmit(_namecontoller.text);
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NewScreen(
      myname:_namevalue,
    )),
  );
                
                },
                child: Text('SIGNUP',style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),),
              ),
            ),
          ),

        ],
      ),
    );
  }
 void _nameSubmit(String s)
  {
   _namevalue=s;
  }
  void _emailSubmit(String s)
  {
    _emailvalue=s;
  }
  void _passwordSubmit(String s)
  {
    _passwordvalue=s;
  }
}