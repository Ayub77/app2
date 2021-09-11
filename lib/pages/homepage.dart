import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

static final String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


final List<String> _listItem=[
  'assets/images/rasm1.jpg',
  'assets/images/rasm2.jpg',
  'assets/images/rasm3.jpg',
  'assets/images/rasm4.jpg',
  'assets/images/rasm5.jpg',
  'assets/images/rasm6.jpg',
  'assets/images/rasm7.jpg',
  'assets/images/rasm8.jpg',
  'assets/images/rasm9.jpg',
  'assets/images/rasm10.jpg',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     backgroundColor: Colors.orange[700],
    appBar: AppBar(
      leading: Icon(Icons.menu),
      title: Text("Aplle Products"),
      centerTitle: true,
      backgroundColor: Colors.orange[700],
      actions: [
        Container(
          margin: EdgeInsets.all(10),
          height: 28,
          width: 34,
          decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.orange[300]
          ),
          child: Center(child: Text("7",style: TextStyle(color: Colors.white,fontSize: 20),)),
        )
      ],
    ),

      body: Column(
        children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(171, 171, 171, 0.7),blurRadius: 20,offset: Offset(10,0)
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/images/rasm2.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Lifestlye sale",style: TextStyle(color: Colors.white,fontSize: 30),),
                          SizedBox(height: 25,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 40),
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(171, 171, 171, 0.7),blurRadius: 20,offset: Offset(10,0)
                      )
                    ],                             
                           
                            ),
                                child: Center(child: Text("Shop Now",style: TextStyle(color: Colors.black,fontSize: 15),)),
                          ),
                          SizedBox(height: 20,)
                        ],
                      ),
                    ),
                  ),
                  
                ),
                Expanded(
                  child:Container(
                    padding: EdgeInsets.all(7),
                    color: Colors.orange[700],
                    child: GridView.count(crossAxisCount: 1,
                    children: _listItem.map((item)=> cellofList(item)).toList(),
                    
                    ),
                  )
                     ),
        ],
      ),
    );
  }
  Widget cellofList(String item){
      return Card(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover
          ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/heart.png"),
                  )
                ),
              )
              ],
          ),
        ),
      );
  }
}