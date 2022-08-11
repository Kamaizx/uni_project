import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('الصفحة الرئيسية'),
          ),
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
              margin: EdgeInsets.all(33),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed("notifications");
      
            }, child: Text("الإعلانات"), style: ElevatedButton.styleFrom(
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,)
            ),),
            ),
             Container(
              margin: EdgeInsets.all(33),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed("resultz");
      
            }, child: Text("النتائج"), style: ElevatedButton.styleFrom(
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,)
            ),),
            ),
             Container(
              margin: EdgeInsets.all(33),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed("grouche");
      
            }, child: Text("الشكاوي و المقترحات"), style: ElevatedButton.styleFrom(
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,)
            ),),
            ),
             Container(
              margin: EdgeInsets.all(33),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed("meeting");
      
            }, child: Text("طلب مقابلة الادارة"), style: ElevatedButton.styleFrom(
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,)
            ),),
            ),
      
             Container(
              margin: EdgeInsets.all(33),
              child: ElevatedButton(onPressed: (){
                // Navigator.of(context).pushNamed("resultz");
      
            }, child: Text("عن الكلية"), style: ElevatedButton.styleFrom(
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,)
            ),),
            ),
      
          ],)
          ),
      ),
      
    );
  }
}