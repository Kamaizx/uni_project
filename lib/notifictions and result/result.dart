import 'package:flutter/material.dart';

class Resultz extends StatelessWidget {
  const Resultz({Key? key}) : super(key: key);

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
        body: ListView(children: [
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.blue[400],
            height: 200,
            width: double.infinity,
            
            child: Text("النتيجة هنا"),
          )
        ],),
        

    ));
  }
}