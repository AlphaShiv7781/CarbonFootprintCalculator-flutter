import 'package:flutter/material.dart';
import 'constant.dart';
import 'calculator_brain.dart';
import 'resultPage.dart';
class Input_page extends StatefulWidget {
  const Input_page({Key? key}) : super(key: key);

  @override
  State<Input_page> createState() => _Input_pageState();
}

class _Input_pageState extends State<Input_page> {

  late double monthlyElectricBill;
  late double monthlyGasBill;
  late double monthlyOilBill;
  late double mileage;
  late double NumberofFlightsIn4hrsLess;
  late double NumberofFlights4hrsmore;

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  final myController5 = TextEditingController();
  final myController6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: const Center(child: Text('CarbonFootprint CalC')),
         backgroundColor: const Color(0xFFBDD431),
       ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                  Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children:<Widget>[

                            const SizedBox(height: 30.0,),
                            Container(
                              child: const Text(
                                'Monthly electricity bill ',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            TextField(
                                controller: myController1,
                                style: const TextStyle(
                                    color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                onChanged: (value) {
                                  monthlyElectricBill = double.tryParse(myController1.text)!;
                                },
                                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter monthly electricity bill')
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: const Text(
                                'Monthly gas bill',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            TextField(
                                controller: myController2,
                                style: const TextStyle(
                                    color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                onChanged: (value) {
                                  monthlyGasBill = double.tryParse(myController2.text)!;
                                },
                                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter monthly gas bill')
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: const Text(
                                'Monthly oil bill',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            TextField(
                                controller: myController3,
                                style: const TextStyle(
                                    color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                onChanged: (value) {
                                  monthlyOilBill =  double.tryParse(myController3.text)! ;
                                },
                                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter monthly oil bill')
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: const Text(
                                'Total yearly mileage on your vehicle',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            TextField(
                                controller: myController4,
                                style: const TextStyle(
                                    color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                onChanged: (value) {
                                  mileage =  double.tryParse(myController4.text)! ;
                                },
                                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter total yearly mileage on your vehicle')
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: const Text(
                                'No. of flights taken (4 hours or less)',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            TextField(
                                controller: myController5,
                                style: const TextStyle(
                                    color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                onChanged: (value) {
                                  NumberofFlightsIn4hrsLess =  double.tryParse(myController5.text)! ;
                                },
                                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter no. of flights taken in 4 hours or less')
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: const Text(
                                'No. of flights taken (4 hours or more)',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            TextField(
                                controller: myController6,
                                style: const TextStyle(
                                    color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                onChanged: (value) {
                                  NumberofFlights4hrsmore =  double.tryParse(myController6.text)! ;
                                },
                                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter no. of flights taken in 4 hours or more')
                            ),
                          ],
                        ),
                      ),
                  ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: 80.0,
                  decoration:  BoxDecoration(
                    color:  Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child:  TextButton(onPressed: (){

                    CalculatorBrain calc= CalculatorBrain(monthlyElectricityBill: monthlyElectricBill, monthlyGasBill: monthlyGasBill, monthlyOilBill: monthlyOilBill, Mileage: mileage, flightsIn4hrsLess: NumberofFlightsIn4hrsLess, flightsIn4hrsMore: NumberofFlights4hrsmore);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ResultPage(
                        result: calc.CalculateGHGFootprint(),
                         resultText: calc.getResult(),
                        suggestion: calc.getSuggestion(),
                      )),
                    );
                  },
                    child: const Text('CALCULATE',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
