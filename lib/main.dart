import 'package:flutter/material.dart';
import 'package:provi/homeinfo.dart';
import 'package:provider/provider.dart';
import 'Homepage.dart';

void main(){
  runApp(Myapp());

}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:  Home(),

    );
  }
}


class Homepage extends StatelessWidget {

  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<incre>(
      create: (context) => incre(),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child:Consumer<incre>(
              builder: (context, incre, child) => Text(incre.a.toString()),
            )),
            SizedBox(height: 20.0,),
            Container(child: Consumer<incre>(
              builder: (context, incre, child) => ElevatedButton(child: Text("Press"),onPressed: (){incre.inc();}),
            )),
          ],
        ),
      ),
    );
  }
}


class incre extends ChangeNotifier{
  int a=0;
  void inc(){

    a++;
notifyListeners();
  }
}
