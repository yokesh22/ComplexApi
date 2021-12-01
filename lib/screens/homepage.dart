import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:interndemo/constants.dart';
import 'package:interndemo/models/model.dart';
import 'package:interndemo/services/api.dart';
import 'package:interndemo/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _1min = false;
  bool _5min = false;
  bool _15min = false;
  bool _30min = false;
  bool _1HR = false;
  bool _5HR = false;
  bool _1Day = false;
  bool _1WK = false;
  bool _1Mon = false;
  Map response= Map();
  getapi()async{
    Getapi api = Getapi();
    await api.apicall().then((value){
      setState(() {
        var res = value;
        response = res;
        print('${res['15min']['moving_averages']['table_data']['exponential'][0]['title']}');
      });
    });
  }

  getapi_min({required String min})async{
    Getapi api = Getapi();
    await api.apicall().then((value){
      setState(() {
        var res = value;
        print('${res[min]['moving_averages']['table_data']['exponential'][0]['title']}');
      });
    });
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getapi();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background_color,
      appBar: AppBar(
        backgroundColor: background_color,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white54,
        ),
        title: const Text(
          "INR/USD",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.save_alt_outlined,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.07,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Techinical Indicators",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 17.0,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.white54,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection:Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: const Text(
                      "summary",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height * 0.5,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8.0,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _1min = true;
                                    });
                                    getapi_min(min: "1min");
                                  },
                                  child: time_container(text: "1 min",isSelected: _1min)),
                                SizedBox(
                                  height: 8.0,
                                ),
                                GestureDetector(
                                  onTap: (){
                                     setState(() {
                                       _5min = true;
                                    });
                                  },
                                  child: time_container(text: "5 min",isSelected: _5min)),
                                SizedBox(
                                  height: 8.0,
                                ),
                                GestureDetector(
                                  onTap: (){
                                     setState(() {
                                       _15min = true;
                                    });
                                  },
                                  child: time_container(text: "15 min",isSelected: _15min)),
                                SizedBox(
                                  height: 8.0,
                                ),
                                GestureDetector(
                                  onTap: (){
                                     setState(() {
                                       _30min = true;
                                    });
                                  },
                                  child: time_container(text: "30 min",isSelected: _30min)),
                                SizedBox(
                                  height: 8.0,
                                ),
                                GestureDetector(
                                  onTap: (){
                                     setState(() {
                                       _1HR = true;
                                    });
                                  },
                                  child: time_container(text: "1 HR",isSelected: _1HR)),
                                SizedBox(
                                  height: 8.0,
                                ),
                                GestureDetector(
                                  onTap: (){
                                     setState(() {
                                      _5HR = true;;
                                    });
                                  },
                                  child: time_container(text: "5 HR",isSelected: _5HR)),
                                SizedBox(
                                  height: 8.0,
                                ),
                                GestureDetector(
                                  onTap: (){
                                     setState(() {
                                       _1Day = true;
                                    });
                                  },
                                  child: time_container(text: "1 Day",isSelected: _1Day)),
                                SizedBox(
                                  height: 8.0,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _1WK = true;
                                    });
                                  },
                                  child: time_container(text: "1 WK",isSelected: _1WK)),
                                SizedBox(
                                  height: 8.0,
                                ),
                                GestureDetector(
                                  onTap: (){
                                     setState(() {
                                       _1Mon = true;
                                    });
                                  },
                                  child: time_container(text: "1 Mon",isSelected: _1Mon)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child:Text(
                      "Moving Avergaes",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  SizedBox(height:20.0),
                  Container(
                    alignment: Alignment.center,
                    width:size.width/4+10.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child:Text(
                      "",
                      style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    width: double.infinity,
                    child: main_value_row(val1: "2",val2: "-",val3: "10"),
                  ),
                  Container(
                    width: double.infinity,
                    child: main_value_row_light(val1:"Buy",val2: "Neutral",val3: "Sell"),
                  ),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                        context: context, builder:(context)=>BottomSheet(
                          onClosing: (){},
                          builder: (context)=>Container(
                            height: size.height*0.2,
                            child: Column(
                              children: [
                                ListTile(
                                  //leading: Icon(Icons.check),
                                  title: Text("Exponential"),
                                  onTap: (){},
                                ),
                                 ListTile(
                                  title: Text("Simple"),
                                  onTap: (){},
                                ),
                              ],
                            ),
                          )
                          )
                        );
                    },
                    child: Container(
                      alignment:Alignment.center,
                      padding:EdgeInsets.symmetric(horizontal: 10.0),
                      margin:EdgeInsets.symmetric(vertical: 20.0),
                      width: size.width*0.32,
                      height: size.width*0.1,
                      decoration:BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "EXPONENTIAL",
                            style: TextStyle(
                              color: Colors.white30,
                              fontSize: 11.0
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.white54,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: table1(),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child:Text(
                      "Oscillators",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  SizedBox(height:20.0),
                  Container(
                    alignment: Alignment.center,
                    width:size.width/4+10.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child:Text(
                      "Strong Sell",
                      style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    width: double.infinity,
                    child: main_value_row(val1: "2",val2: "-",val3: "10"),
                  ),
                  Container(
                    width: double.infinity,
                    child: main_value_row_light(val1: "Buy",val2: "Neutral",val3: "Sell"),
                  ),
                  SizedBox(height:15.0),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: table1(),
                    ),
                  ),
                  SizedBox(height:20.0),
                   Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child:Text(
                      "Pivot Points",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  Container(
                    alignment:Alignment.center,
                    padding:EdgeInsets.symmetric(horizontal: 10.0),
                    margin:EdgeInsets.symmetric(vertical: 20.0),
                    width: size.width*0.32,
                    height: size.width*0.1,
                    decoration:BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "CLASSIC",
                          style: TextStyle(
                            color: Colors.white30,
                            fontSize: 11.0
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Colors.white54,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.only(bottom: 10.0,left: 10.0,right: 10.0,top: 7.0),
                    padding:EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: table2(),
                    ),
                  ),
                
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget time_container({text,isSelected}) {
  return Container(
    width: 60.0,
    height: 30.0,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(color:isSelected == "1min"? Colors.white:Colors.white30),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: isSelected? Colors.white:Colors.white30,
      ),
    ),
  );
}


