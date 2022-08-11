import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
    Signup({Key? key, TextDirection :TextDirection.rtl,}) : super(key: key);




  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var mojer  ;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.only(top: 70),
          children: [
              
                // Container(
                //   padding: EdgeInsets.all(150),
                //   child:Center(child: Image.asset("images/1.png")) ,
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20) ,
                      child: Form(child: Column(children: [
                        TextFormField(
                          decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                            hintText: "اكتب اسمك رجاء",
                             border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)
                            )
                          ),
                        ),
                        SizedBox(height: 20,),
    
                        TextFormField(
                          decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                            hintText: "ادخل البريد الالكتروني ",
                             border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)
                            )
                          ),
                        ),
                         SizedBox(height: 20,),
                         TextFormField(
                          decoration: InputDecoration(
                          // prefixIcon: Icon(Icons.person),
                            hintText: "ادخل الرقم الجامعي ",
                             border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)
                            )
                          ),
                        ),
                        SizedBox(height: 20,),
    
                       
    
                        SizedBox(height: 20,),
                         TextFormField(
                           obscureText: true,
                           decoration: InputDecoration(
                          //  prefixIcon: Icon(Icons.person),
                             hintText: "قم بتعيين كلمة سر",
    
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)
                           )
                          ),
                         ),
                         SizedBox(height: 20,),

                         Container(
                          //  color: Colors.indigo,
                           child: Text("قم باختيار التخصص" , style: TextStyle(fontSize: 20,
                           ),) ,
                         ),

                          Container(
                            margin: EdgeInsets.all(20),
                            padding: EdgeInsets.all(5),
                            color: Colors.indigo,
                          child: DropdownButton(
                            underline: Divider(thickness: 0,),
                            isExpanded: true,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.green[300],

                            hint: Container(padding: EdgeInsets.only(right: 10), child: Text("اختر التخصص من هنا", style: TextStyle(color: Colors.white ,fontSize: 20),)),
                            items: ["نظم معلومات ادارية" ,
                          "محاسبة و تمويل" , "ادارة اعمال " ,
                          "إقتصاد" , "دراسات مصرفية "]
                          .map((e) => DropdownMenuItem(child: Text("$e" , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),),value: e,)).toList(),
                           onChanged: (val){
                             setState(() {
                               mojer = val as String;
                             });
                           },
                          value:mojer,),

                        ),
                         Container(
                          margin: EdgeInsets.all(10),
                           child: Row(children: [
                          Text(" لديك حساب؟ " , style: TextStyle(fontSize: 20),),
                           Text("  "),
                           InkWell(
                             onTap: (){
                               Navigator.of(context).popAndPushNamed("login");
          
                            },
                            child: Text(" اضغط هنا" , 
                              style: TextStyle(color: Colors.indigo , fontSize: 20),),)
                        ],),),
                         Container(child: ElevatedButton(onPressed: (){},
                          child: Text("انشاء الحساب" , style: TextStyle(fontSize: 20),),))
                       ],)),
                    ),
                  ],
                )
            
          
                   
             ],),
               ),
    );}
}