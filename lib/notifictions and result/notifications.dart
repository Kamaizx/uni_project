

import 'package:flutter/material.dart';

class Notific extends StatelessWidget {
  //  Notific({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar:appBar() ,
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
        body: listView(),
      ),
    );
  }
  PreferredSizeWidget appBar(){
    return AppBar(
      title: Text("لوحة الاعلانات"));
  }
  
  Widget listView(){
    return ListView.separated(
      itemBuilder: (context, index){
      return listViewItem(index);
    }, separatorBuilder: (context, index){
      return Divider(height: 0,);
    }, itemCount: 15);
  }

  Widget listViewItem(int index){
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  message(index),
                  timeAndDate(index),
                ],
              ),
            ),
          ),
        ],
      ),
      
    );
  }
  Widget prefixIcon(){
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,

      ),
      child: Icon(Icons.notifications , size: 25 ,color: Colors.blue[300],),
    );
  }
  Widget message(int index){
    double textSize = 20;
    return Container(
      child: RichText(maxLines: 4,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: " الاعلان ",
        style: TextStyle(
          fontSize: textSize,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
        children: [
          TextSpan(
            text: "محتوى الاعلان ",
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
      ),
    );
  }
  Widget timeAndDate(int index){
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("10.8.2022", style: TextStyle(
            fontSize: 10,
          ),),
           Text("3.8.2022", style: TextStyle(
            fontSize: 10,
          ),),
        ],
      ),
    );

  }
}