import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/Model/BMI_Cal.dart';

class Bmistate extends StatelessWidget {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final resultController = TextEditingController();
  double result;

  get result1 => result;
 // var status;

  void BMI(BuildContext context) {
    var height2 = double.parse(heightController.text);
    var weight2 = double.parse(heightController.text);
    Provider.of<BMICalculation>(context, listen: false).BMI(height2,weight2);
  }
  @override
  Widget build(BuildContext context) {
  var result = Provider.of<BMICalculation>(context).getBMI;
  var status = Provider.of<BMICalculation>(context).getStatus;
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(
         title: Text("BMI"),
         //backgroundColor: Colors.blue,
       ),
       body: ListView(
         children: [
           ListTile(
             leading: const Icon(Icons.assessment_sharp),
             title:  TextField(
               controller: heightController,
               decoration: InputDecoration(
                 hintText:"Enter a height",
               ),
             ),
           ),
           ListTile(
             leading: const Icon(Icons.view_headline_sharp),
             title:  TextField(
               controller: weightController,
               decoration: InputDecoration(
                 hintText:"Enter a weight",
               ),
             ),
           ),
           Column(
             children: <Widget>[
               RaisedButton(
                 onPressed: () => BMI(context),
                 child: Text("Calculate BMI",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),),
                 color: Colors.black54,
                 textColor: Colors.white,
               ),
             ],
           ),
           Container(
             child:  Text("Your BMI Is : " + result.toString(),style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),textAlign: TextAlign.center),
             padding: const EdgeInsets.all(10),
           ),
           Container(
             child:  Text("Your BMI Status Is: " + status.toString(),style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),textAlign: TextAlign.center),
             padding: const EdgeInsets.all(10),
           ),
         ],
       ),
     );
  }

}