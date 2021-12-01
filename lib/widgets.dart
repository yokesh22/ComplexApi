import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


Widget main_value_row({val1, val2, val3}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 40,
        alignment: Alignment.center,
        child: Text(
          val1,
          style: TextStyle(color: Colors.white,fontSize: 18.0),
        ),
      ),
      Container(
        width: 30,
        alignment: Alignment.center,
        child: Text(
          val2,
          style: TextStyle(color: Colors.white,fontSize: 18.0),
        ),
      ),
     Container(
        width: 40,
        alignment: Alignment.center,
        child: Text(
          val3,
          style: TextStyle(color: Colors.white,fontSize: 18.0),
        ),
      ),
    ],
  );
}
Widget main_value_row_light({val1, val2, val3}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        val1,
        style: TextStyle(color: Colors.white30),
      ),
      Text(
        val2,
        style: TextStyle(color: Colors.white30),
      ),
      Text(
        val3,
        style: TextStyle(color: Colors.white30),
      )
    ],
  );
}


Widget table1() {
  return DataTable(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
    headingRowColor: MaterialStateColor.resolveWith((states) => Colors.white10),
    columns: const [
      DataColumn(
        label: Text(
          "TITLE",
          style: TextStyle(color: Colors.white30),
        ),
      ),
      DataColumn(
        label: Text(
          "VALUE",
          style: TextStyle(color: Colors.white30),
        ),
      ),
      DataColumn(
        label: Text(
          "TYPE",
          style: TextStyle(color: Colors.white30),
        ),
      )
    ],
    rows: [
      DataRow(cells: [
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.red),
        ))
      ]),
      DataRow(cells: [
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.red),
        ))
      ]),
      DataRow(cells: [
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.red),
        ))
      ]),
       DataRow(cells: [
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.red),
        ))
      ]),
       DataRow(cells: [
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.red),
        ))
      ]),
       DataRow(cells: [
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.white),
        )),
        DataCell(Text(
          'hello',
          style: TextStyle(color: Colors.red),
        ))
      ]),
      
    ],
  );
}


Widget table2(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Text("data",style: TextStyle(color: Colors.white30)),
          SizedBox(height: 6.0,),
          Text("data",style: TextStyle(color: Colors.white30)),
          SizedBox(height: 6.0,),
          Text("data",style: TextStyle(color: Colors.white30)),
          SizedBox(height: 6.0,),
          Text("data",style: TextStyle(color: Colors.white30)),
          SizedBox(height: 6.0,),
          Text("data",style: TextStyle(color: Colors.white30)),
          SizedBox(height: 6.0,),
          Text("data",style: TextStyle(color: Colors.white30)),
        ],
      ),
     Column(
        children: [
          Text("data",style: TextStyle(color: Colors.white30)),
          SizedBox(height: 6.0,),
          Text("data",style: TextStyle(color: Colors.white30)),
          SizedBox(height: 6.0,),
          Text("data",style: TextStyle(color: Colors.white30)),
          SizedBox(height: 6.0,),
          Text("data",style: TextStyle(color: Colors.white30)),
          SizedBox(height: 6.0,),
          Text("data",style: TextStyle(color: Colors.white30)),
          SizedBox(height: 6.0,),
          Text("data",style: TextStyle(color: Colors.white30)),
         
        ],
      ),
    ],
  );
}