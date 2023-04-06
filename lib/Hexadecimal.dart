import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';
class HexaDecimal extends StatefulWidget {
  const HexaDecimal({super.key});

  @override
  State<HexaDecimal> createState() => _HexaDecimalState();
}

class _HexaDecimalState extends State<HexaDecimal> {
  String input="";
  String result="";
  var numeral_systems=NumeralSystems();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 9.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
            
                  onChanged: (val) {
                    input = val;
                    


                  
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                      hintText: "      Hexadecimal Number",
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
                numeral_systems.convert(NUMERAL_SYSTEMS.hexadecimal, input);
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
                decoration: BoxDecoration(color: Colors.blue),
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
              
               numeral_systems.convert(NUMERAL_SYSTEMS.hexadecimal, input);
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
                decoration: BoxDecoration(color: Colors.blue),
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
              numeral_systems.convert(NUMERAL_SYSTEMS.hexadecimal, input);
                result=numeral_systems.decimal.stringValue.toString();
                
                
                
              });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 45,
                child: Center(
                    child: Text(
                  "Convert to Decimal",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
                decoration: BoxDecoration(color: Colors.blue),
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
    