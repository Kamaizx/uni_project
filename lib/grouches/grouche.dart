import 'package:flutter/material.dart';

class Grouche extends StatefulWidget {
  Grouche({Key? key}) : super(key: key);

  @override
  State<Grouche> createState() => _GroucheState();
}

class _GroucheState extends State<Grouche> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: Column(children: [
              UserAccountsDrawerHeader(accountName: Text("كلية الاقتصاد و الدراسات التجارية"),
               accountEmail: Text("kordofan.edu.sd" )),
               ListTile(title:Text("الصفحة الرئيسية"),
                leading: Icon(Icons.home),onTap: (){
                  Navigator.of(context).pushNamed("homepage");
          
               },),
               ListTile(title:Text("FAQ"),
                leading: Icon(Icons.face),onTap: (){
          
               },),
               ListTile(title:Text("تسجيل الخروج"),
                leading: Icon(Icons.home),onTap: (){
                  Navigator.of(context).pushReplacementNamed("login");
          
               },),
          
            ],)
        ),
        body:ListView(
          children: [
            Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(20),
                // padding: EdgeInsets.all(20),
                child: Center
              (child: Text("اذا كان لديك شكوى او مقترح يرجى اعلامنا به" ,
              style: TextStyle(fontSize: 20),))),
        
              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  maxLines: 8,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    hintText: "ما سبب الرسالة",
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                             borderSide: BorderSide(width: 1)
        
                              )),
                 
                ),
              ),
              SizedBox(height: 20,),
        
              Container(child: ElevatedButton(onPressed: (){
        
              }, child: Text("ارسال" , style: TextStyle(fontSize: 25),)),)
            ],)
        
          ),
          ],
        ),
      ),
    );
  }
 }