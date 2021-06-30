import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=> runApp(
    MtrApp()
);
class MtrApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Shabnam',
          primaryColor: Colors.green,
          accentColor: Colors.green

      ),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.mode_edit) ,tooltip: 'پیام جدید',),

            appBar: PreferredSize(
              preferredSize: Size.fromHeight(125.0),
              child: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(text:"همه",icon: Icon(Icons.all_inclusive),),
                    Tab(text:"خصوصی",icon: Icon(Icons.person_outline),),
                    Tab(text:"گروه ها",icon: Icon(Icons.people_outline),),
                    Tab(text:"کانال ها",icon: Icon(Icons.chat_bubble_outline),),
                  ],
                  labelStyle: TextStyle(fontSize: 11.50,fontFamily: 'Shabnam'),
                  indicatorColor: Colors.white,
                  indicatorWeight: 3.0,
                  unselectedLabelColor: Colors.white60,

                ),

                title: Text("پیامرسان جوان تِل",style: TextStyle(fontSize: 17.0),),
                centerTitle: true,
                actions: <Widget>[
                  Icon(Icons.search),
                  SizedBox(width: 14.00,),
                ],

              ),
            ),

            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  Container(

                    padding: EdgeInsets.only(top: 30.00,left: 14.00,right: 14.00),
                    color:Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30.0,
                          child: FlutterLogo(colors: Colors.green,size: 38.0,),
                          backgroundColor: Colors.white,
                        ),
                        ListTile(
                          trailing: Icon(Icons.arrow_drop_down_circle,color: Colors.white,size: 25.0,),
                          contentPadding: EdgeInsets.all(0.0),
                          title: Text("امیرحسین خسروی",style: TextStyle(color: Colors.white,fontSize: 15.00),),
                          subtitle: Text("+۹۸ ۹۳۳۴۷۵۱۷۹۸",style: TextStyle(color: Colors.white70,fontSize: 13.00),textDirection: TextDirection.ltr,textAlign: TextAlign.end,),
                        ),

                      ],
                    ),
                  ),
                  drawerItem(title: 'گروه جدید' , icon: Icons.people_outline),
                  drawerItem(title: 'پیام امن جدید' , icon: Icons.lock_outline),
                  drawerItem(title: 'ایجاد کانال' , icon: Icons.chat_bubble_outline),
                  Divider(),
                  drawerItem(title: 'مخاطبین' , icon: Icons.person_outline),
                  drawerItem(title: 'پیام های ذخیره شده' , icon: Icons.bookmark_border),
                  drawerItem(title: 'تماس ها' , icon: Icons.call),
                  drawerItem(title: 'دعوت از دوستان' , icon: Icons.person_add),
                  drawerItem(title: 'تنظیمات' , icon: Icons.settings),
                  Divider(),
                  drawerItem(title: 'پرسش های متداول' , icon: Icons.help_outline),

                  ListTile(
                    title: Text("طراح و برنامه نویس امیرحسین خسروی \n   www.amirkho.ir   ",style:TextStyle(fontSize: 11.0) ,),
                    leading: Icon(Icons.code),
                  )
                ],
              ),
            ),




            body:

            ListView
              (
              children: <Widget>[
                item(
                  userName: "امیرحسین خسروی",
                  lastChat: "برنامه نویس وب و موبایل فلاتر هستم...",
                  userProfile: "assets/images/amirkho2.jpg",
                  msgCount: "۱۰",
                  hourMsg: "۲۰:۴۵",
                  onlineStatus: true,
                ),
                Divider(indent: 20),
                item(
                  userName: "www.amirkho.ir",
                  lastChat: "نمونه کارهامو میتونید اینجا ببینید...",
                  userProfile: "assets/images/amirkho.jpg",
                  msgCount: "۲",
                  hourMsg: "۲۰:۰۰",
                  onlineStatus: true,
                ),
                Divider(indent: 20),
                flutterIco(
                  userName: "توسعه دهندگان فلاتر",
                  lastChat: "به برنامه نویسان موبایل فلاتر خوش آمدید...",
                  msgCount: "۵",
                  hourMsg: "۱۷:۳۰",
                  onlineStatus: true,
                ),
              ],
            )

        ),
      ),
    );
  }
}


item({userName , onlineStatus = false, msgCount , hourMsg ,lastChat, userProfile=false}){


  return Container(
    child: ListTile(
      title: Text(userName,style: TextStyle(fontSize: 14.50,fontWeight: FontWeight.w600),),
      subtitle: Text(lastChat),
      leading: Stack(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: userProfile == false ? AssetImage('assets/images/flutterlogo1.png') : AssetImage(userProfile),
            radius: 25.00,

          ),
          onlineStatus == false ? Container(child: Text(""),) : Positioned(
            child: Container(
              width: 13.00,
              height: 13.00,
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white)
              ),
            ),
            bottom: 0,
            right: 0,
          ),
        ],
      ),

      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(hourMsg,style: TextStyle(fontSize: 12.50),),
          SizedBox(height: 12.00,),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.green,
            child: Text(msgCount,style: TextStyle(fontSize: 11.00,color: Colors.white,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    ),
  );
}
drawerItem({title , icon}) {
  return ListTile(
    title: Text(title,style: TextStyle(color: Colors.black87),),
    leading: Icon(icon),
  );
}

flutterIco({userName , onlineStatus = false, msgCount , hourMsg ,lastChat, userProfile=false}){
  return ListTile(
      title: Text(userName,style: TextStyle(fontSize: 14.50,fontWeight: FontWeight.w600),),
  subtitle: Text(lastChat),
  leading: Stack(
  children: <Widget>[
  CircleAvatar(
    radius: 25,
 backgroundColor: Colors.white,
  child: FlutterLogo(colors: Colors.green,size: 38.00,),

  ),
  onlineStatus == false ? Container(child: Text(""),) : Positioned(
  child: Container(
  width: 13.00,
  height: 8.00,
  child: Icon(Icons.chat,color: Colors.green,size: 18.0,),
  ),
  bottom: 0,
  right: 0,
  ),
  ],
  ),

  trailing: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Text(hourMsg,style: TextStyle(fontSize: 12.50),),
  SizedBox(height: 12.00,),
  CircleAvatar(
  radius: 10,
  backgroundColor: Colors.green,
  child: Text(msgCount,style: TextStyle(fontSize: 11.00,color: Colors.white,fontWeight: FontWeight.bold),),
  )
  ],
  ),
  );
}

