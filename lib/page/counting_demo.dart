import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CountingDemo extends StatefulWidget {
  const CountingDemo({Key? key}) : super(key: key);

  @override
  State<CountingDemo> createState() => _CountingDemoState();
}

class _CountingDemoState extends State<CountingDemo> {



  Widget listView(BuildContext context){
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          title:Text('${context.watch<ProgramListProvider>().programList[index].title}'),
          subtitle: Text("Sub Title"),
          trailing: Checkbox(
            value: context.watch<ProgramListProvider>().programList[index].check,
            onChanged: (value) {
              context.read<ProgramListProvider>().checkToggle(index, value);
            },
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.network("https://media-exp1.licdn.com/dms/image/C5603AQH4Q3zonuj86A/profile-displayphoto-shrink_200_200/0/1617540661467?e=1637798400&v=beta&t=QSZnu9TNd_PuQEWIVwvK2rUYAgwzxDnP5X_nFloXQco"
            ),
          ),
        );
      },
      itemCount: context.watch<ProgramListProvider>().programList.length,

    );
  }


  Widget item() {

    return(
    Text("hello")
    );

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Counting"),
        ),
        body: SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(
                child:  listView(context),
              ),
               SizedBox(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  child: Text("Hello")
                ),
              ),
              SizedBox(
                child: listView(context),
              ),
              SizedBox(
                height: 100.0,
                child: ListView.builder(
                    shrinkWrap: true,

                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Text(' Gwkki ${index}',style: TextStyle(
                        fontSize: 25.0
                      ),);
                    },
                  itemCount: 10,
                ),
              ),
              SizedBox(
                child:  listView(context),
              ),
              SizedBox(
                height: 100.0,
                child: ListView.builder(
                  shrinkWrap: true,

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Text(' Gwkki ${index}',style: TextStyle(
                        fontSize: 25.0
                    ),);
                  },
                  itemCount: 4,
                ),
              ),
              SizedBox(
                child:  listView(context),
              ),
              SizedBox(
                height: 100.0,
                child: ListView.builder(
                  shrinkWrap: true,

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Text(' Gwkki ${index}',style: TextStyle(
                        fontSize: 25.0
                    ),);
                  },
                  itemCount: 4,
                ),
              ),
              SizedBox(
                child:  listView(context),
              ),
            ],
          ),
        )
    );
  }


}

class Program {

  String? title;
  bool? check;

  Program({this.title, this.check});


}

class ProgramListProvider extends ChangeNotifier{

  List<Program> programList = [
    Program(
      title: "list 1",
      check: false
    ),
    Program(
        title: "list 2",
        check: true
    )
  ];



   checkToggle(int index,bool? value){
    programList[index].check = value;
    notifyListeners();
  }


}