import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
void main() {
  runApp(MaterialApp(
    home: Home(
    ),
  )
  );
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120.0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0,0,0),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,

              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(1, 7),
                  blurRadius: 5.0,
                ),
                BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(-1, -1),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,
                      size: 45.0,),
                      label: Center(
                        child: Text(
                            'Flash',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ),
                  ),
                ),
                IconButton(
                  icon: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                    radius: 50.0,
                  ),
                  iconSize: 60,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => LogoutOverlay(),
                    );
                  },
                )
              ],
            ),
          ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/2.png'),
                ),
                SizedBox(width: 10,),
                Text('John Andrison',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),)
              ],
            ),
            SizedBox(height: 18,),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/5.png'),
                  radius: 30,
                ),
                SizedBox(width: 10,),
                Text('Mahesh',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),)
              ],
            ),
            SizedBox(height: 18,),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/1.png'),
                ),
                SizedBox(width: 10,),
                Text('Natasha',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),)
              ],
            ),
            SizedBox(height: 18,),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/4.png'),),
                SizedBox(width: 10,),
                Text('Fernny',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),)
              ],
            ),
            SizedBox(height: 18,),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/3.png'),),
                SizedBox(width: 10,),
                Text('Larry',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LogoutOverlay extends StatefulWidget {
  const LogoutOverlay({Key? key}) : super(key: key);

  @override
  State<LogoutOverlay> createState() => _LogoutOverlayState();
}

class _LogoutOverlayState extends State<LogoutOverlay> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: BlurryContainer(
          blur: 7,
          width: 300,
          height: 400,
          elevation: 0,
          color: Colors.black26,
            padding: const EdgeInsets.all(10),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Container(
            height: 450,
            width: 300,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.png'),
                      radius: 25,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lucy Andrison',
                        style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),),
                        Text('lucyandrison782@gmail.com',
                        style: TextStyle(fontSize: 10,color: Colors.white54)
                        )],
                    ),
                  ],
                ),
                SizedBox(height: 6,),
                Divider(height: 5,thickness: 1,color: Colors.black,indent: 25,endIndent: 20,),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.emoji_emotions_outlined,color: Colors.white54,),
                    SizedBox(width: 7,),
                    Text('Status',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white54
                      ),)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.notifications_off_outlined,color: Colors.white54,),
                    SizedBox(width: 7,),
                    Text('Snooze notifications',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white54
                      ),)
                  ],
                ),
                SizedBox(height: 10,),
                Divider(height: 5,thickness: 0.65,color: Colors.black,indent: 30,endIndent: 25,),

                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.outgoing_mail,color: Colors.white54,),
                    SizedBox(width: 7,),
                    Text('Invitation',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white54
                      ),)
                  ],
                ),

                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.archive_outlined,color: Colors.white54,),
                    SizedBox(width: 7,),
                    Text('Archived',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white54
                    ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Divider(height: 5,thickness: 0.65,color: Colors.black,indent: 30,endIndent: 25,),

                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.settings_outlined,color: Colors.white54,),
                    SizedBox(width: 7,),
                    Text('Setting',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white54
                      ),)
                  ],
                ),

                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.question_mark,color: Colors.white54,),
                    SizedBox(width: 7,),
                    Text('Help & feedback',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white54
                      ),)
                  ],
                ),
                SizedBox(height: 30,),
                Divider(height: 5,thickness: 1,color: Colors.black,),
                SizedBox(height: 5,),
                Text('Privacy policy • Terms of service',
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.white54
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
