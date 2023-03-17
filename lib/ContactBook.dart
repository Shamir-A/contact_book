import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        useInheritedMediaQuery: true,
        home: contactPage(),
        debugShowCheckedModeBanner: false,
      )));
}

class contactPage extends StatefulWidget {

  @override
  State<contactPage> createState() => _contactPageState();
}

class _contactPageState extends State<contactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contats",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: PopupMenuButton(
                iconSize: 28,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )),
                ]),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child:  Icon(Icons.group_outlined, color: Colors.white),
                  backgroundColor: Color(0xFF686A83),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                title: Text(
                  "Groups",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  print('onTap Pressed');
                },
                contentPadding: EdgeInsets.all(10),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person_outlined, color: Colors.white),
                  backgroundColor: Color(0xFF686A83),
                ),
                title: Text(
                  "My Card",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  print('onTap Pressed!');
                },
                contentPadding: EdgeInsets.all(10),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
                backgroundColor: Color(0xFF686A83),
              ),
              title: Text("Tommy Shelby", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+44 7911 191922"),
              onTap: () {
                print('onTap Pressed!');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
                backgroundColor: Color(0xFF686A83),
              ),
              title: Text("Poly Grey", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+44 7911 123469"),
              onTap: () {
                print('onTap Pressed!');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
                backgroundColor: Color(0xFF686A83),
              ),
              title: Text("Gerald of Rivia", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+1 555 999 5550"),
              onTap: () {
                print('onTap Pressed!');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
                backgroundColor: Color(0xFF686A83),
              ),
              title: Text("Yennifer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+1 444 378 8800"),
              onTap: () {
                print('onTap Pressed!');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
                backgroundColor: Color(0xFF686A83),
              ),
              title: Text("Sheldon Cooper", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+1 453 323 0911"),
              onTap: () {
                print('onTap Pressed!');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
                backgroundColor: Color(0xFF686A83),
              ),
              title: Text("Hamza", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 9188 810 190"),
              onTap: () {
                print('onTap Pressed!');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
                backgroundColor: Color(0xFF686A83),
              ),
              title: Text("Naseef", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 8847 651 012"),
              onTap: () {
                print('onTap Pressed!');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
                backgroundColor: Color(0xFF686A83),
              ),
              title: Text("Elizabeth", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 9988 693 245"),
              onTap: () {
                print('onTap Pressed!');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
                backgroundColor: Color(0xFF686A83),
              ),
              title: Text("Dulquer Salmaan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 9847 369 369"),
              onTap: () {
                print('onTap Pressed!');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF686A83),
      ),

    );
  }
}
