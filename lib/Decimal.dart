import 'package:flutter/material.dart';
import 'package:units_converter/properties/numeral_systems.dart';
class Decimal extends StatefulWidget {
  const Decimal({super.key});

  @override
  State<Decimal> createState() => _DecimalState();
}

class _DecimalState extends State<Decimal> {
    String input = "";
    String result="";
    
  var numeral_systems=NumeralSystems();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView
    (
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 9.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (val) {
                    input = val;
                    


                  
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                      hintText: "      Decimal Number",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.black))),
                ),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(18.0),
          sliver: SliverToBoxAdapter(
            child: InkWell(
              onTap: () {
              setState(() {
                numeral_systems.convert(NUMERAL_SYSTEMS.decimal, input);
                result=numeral_systems.binary.stringValue.toString();
            
              
                
              });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 45,
                child: Center(
                    child: Text(
                  "Convert to Binary",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
                decoration: BoxDecoration(color: Colors.green),
              ),
            ),
          ),
        ),
         SliverPadding(
          padding: const EdgeInsets.all(18.0),
          sliver: SliverToBoxAdapter(
            child: InkWell(
              onTap: () {
              setState(() {
              
               numeral_systems.convert(NUMERAL_SYSTEMS.decimal, input);
                result=numeral_systems.octal.stringValue.toString();
                
                
              });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 45,
                child: Center(
                    child: Text(
                  "Convert to Octal",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
                decoration: BoxDecoration(color: Colors.green),
              ),
            ),
          ),
        ),
         SliverPadding(
          padding: const EdgeInsets.all(18.0),
          sliver: SliverToBoxAdapter(
            child: InkWell(
              onTap: () {
              setState(() {
              numeral_systems.convert(NUMERAL_SYSTEMS.decimal, input);
                result=numeral_systems.hexadecimal.stringValue.toString();
                
                
                
              });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 45,
                child: Center(
                    child: Text(
                  "Convert to HexaDecimal",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
                decoration: BoxDecoration(color: Colors.green),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top:18.0),
          sliver: SliverToBoxAdapter(
             child: Center(child: Text("$result",style: TextStyle(color: Colors.black,fontSize:21),)),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top:48.0),
          sliver: SliverToBoxAdapter(
            child: Center(child: Text("Developed By Prabin Bhattarai",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),)),
          ),
        )

      ],


    );
  }
}