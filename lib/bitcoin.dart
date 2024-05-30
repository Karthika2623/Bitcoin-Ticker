
import 'package:flutter/material.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key});

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  List<DropdownMenuItem> getDropDownItems (){
    List<DropdownMenuItem<String>> Dropdownitems =[];
    for(String currency in currenciesList){
      var newItem = DropdownMenuItem(child: Text('currency'),
        value: currency,

      );
      Dropdownitems.add(newItem);
    }
    return Dropdownitems;
  }
  @override
  Widget build(BuildContext context) {
    getDropDownItems();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0,0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: const Padding(padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
                child: Text(
                  '1 BTC = ? USD',textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 20.0,color: Colors.purple
                ),
                ),
              ),
            ),
          ),
          Container(
            height: 140.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 15.0),
            color: Colors.teal,
            // child: DropdownButton<String>(
            //   value: selectedCurrency,
            //    items:getDropDownItems(),
            //   onChanged: (value) {
            //     setState(() {
            //       selectedCurrency = value!;
            //     });
            // },
            // ),
          )
        ],
      ),
    );
  }
}