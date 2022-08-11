import 'package:flutter/material.dart';


class Login extends StatefulWidget {
   const Login({Key? key, TextDirection :TextDirection.rtl,}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
      
       
     
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              
                // Container(
                //   padding: EdgeInsets.all(150),
                //   child:Center(child: Image.asset("images/1.png")) ,
                // ),
                Container(
                  padding: EdgeInsets.all(20) ,
                  child: Form(child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                        hintText: "ادخل البريد الالكتروني",
                         border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1)
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                     TextFormField(
                       obscureText: true,
                       decoration: InputDecoration(
                       prefixIcon: Icon(Icons.person),
                         hintText: "ادخل كلمة السر",
    
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1)
                       )
                      ),
                     ),
                     Container(
                      margin: EdgeInsets.all(10),
                       child: Row(children: [
                      Text(" ليس لديك حساب؟ " , style: TextStyle(fontSize: 20),),
                       Text("  "),
                       InkWell(
                         onTap: (
                         ){
                        
                        Navigator.of(context , rootNavigator: true).pushNamed("signup");
                         },
                        child: Text(" اضغط هنا" , 
                          style: TextStyle(color: Colors.indigo , fontSize: 20),),)
                    ],),),
                     Container(child: ElevatedButton(onPressed: (){
                       Navigator.of(context).pushReplacementNamed("homepage");
                     },
                      child: Text("تسجيل الدخول" , style: TextStyle(fontSize: 20),),))
                   ],)),
                )
            
          
                   
             ],),
               ),
    );}
}