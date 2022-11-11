import 'package:flutter/material.dart';
import 'package:provi/home2.dart';
import 'package:provi/homeinfo.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HARSHIL"),
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("1"),
                      Text("STRIKE"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("1"),
                      Text("STRIKE"),
                    ],
                  ), Column(
                    children: [
                      Text("1"),
                      Text("STRIKE"),
                    ],
                  ),

                ],
              ),
            ),
            Divider(thickness: 5.0,color: Colors.grey),
            Divider(thickness: 5.0,color: Colors.grey),

            Container(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("yoga for you"),
                    SizedBox(height: 10,),
                    Container(
                      color: Colors.grey,
                      height: 160,
                      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,), itemBuilder:(context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 70,
                            color: Colors.deepPurple,
                            child: Center(child: Text("HR")),
                          ),
                        );
                      },),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("yoga for you"),
                    SizedBox(height: 10,),
                    Container(
                      color: Colors.grey,
                      height: 140,
                      child: ListView.builder(itemCount: 4,padding: EdgeInsets.all(10.0),itemBuilder: (context, index) {
                        return Card(
                          color: Colors.deepPurple,
                           elevation: 20.0,

                          child: Container(
                            child: Text("HR"),
                          ),
                        );
                      },),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 30.0,
        backgroundColor: Colors.black12,
      //  onTap: (value) => Navigator.push(context, MaterialPageRoute(builder: (context) => homeinfo(),)),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME",),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "CAll",),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "MESSAGE",),

        ],
        //hashbhadhdhvsahvdva
        onTap: (index)
          {
          if(index==0){
            Navigator.push(context, MaterialPageRoute(builder: (context) => homeinfo(),));
          }
          else if(index==1){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home2(),));
          }
        },
      ),
    );
  }
}
