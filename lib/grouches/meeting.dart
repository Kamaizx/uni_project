import 'package:flutter/material.dart';

class Meeting extends StatefulWidget {
  Meeting({Key? key}) : super(key: key);

  @override
  State<Meeting> createState() => _MeetingState();
}

class _MeetingState extends State<Meeting> {
  var meet ;
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
                // margin: EdgeInsets.all(20),
                // padding: EdgeInsets.all(20),
                child: Center
              (child: Text("قم بتحديد ما اذا كنت تريد مقابلة العميد او المسجل" ,
              style: TextStyle(fontSize: 20),))),
            
            
             Container(
               margin: EdgeInsets.all(20),
               padding: EdgeInsets.all(5),
               color: Colors.indigo,
               child: DropdownButton(
                 underline: Divider(thickness: 0,),
                                isExpanded: true,
                                iconEnabledColor: Colors.white,
                                dropdownColor: Colors.green[300],
            
                                hint: Container(padding: EdgeInsets.only(right: 10), child: Text("قم بتحديد من تريد ان تقابل من هنا", style: TextStyle(color: Colors.white ,fontSize: 20),)),
                                items: [
                                  "العميد" , "المسجل" ,
                             ]
                              .map((e) => DropdownMenuItem(child: Text("$e" , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),),value: e,)).toList(),
                               onChanged: (val){
                                 setState(() {
                                   meet = val as String;
                                 });
                               },
                              value:meet,
               ),
             ),
            
               
            
            
              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  maxLines: 8,
                  style: TextStyle(fontSize: 20),
                  decoration:  InputDecoration(
                    hintText: "ما سبب المقابلة" ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(width: 1)

                    ),
                    

                  ),
                   
                   
                              ),
                        
        
                 
                ),
              
              SizedBox(height: 20,),
            
              Container(
                
                child: ElevatedButton(onPressed: (){
            
              }, child: Text("ارسال" , style: TextStyle(fontSize: 25),)),)
            ],)
            
          ),
          ],
        ),
      ),
    );
  }
 }