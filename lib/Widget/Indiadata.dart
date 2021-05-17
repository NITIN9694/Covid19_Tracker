import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as http;





class IndiaData extends StatefulWidget {
  @override
  _IndiaDataState createState() => _IndiaDataState();
}

class _IndiaDataState extends State<IndiaData> {
Future getdata()async{
 http.Response response = await http.get(Uri.https("covid-api.mmediagroup.fr", "v1/cases"));
  return jsonDecode(response.body);
}
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
         future: getdata(),
         builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            Map daata =snapshot.data;
           return ListView.builder(
             itemCount: 1,
             itemBuilder: (ctx,index){
               print(daata["India"]["All"]["confirmed"]);
              
            return Container(
              decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage("assets/images/virus.png")),
                  borderRadius: BorderRadius.circular(50),
              ),
                height: 220,
                 child: Material(
                   
                   elevation:8 ,
                   borderRadius: BorderRadius.circular(50),
                  
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       height: MediaQuery.of(context).size.height*0.2,
                        
                       child: Image.asset("assets/images/india.png",fit: BoxFit.cover,)),
                  Padding(
                    padding: const EdgeInsets.only(right:40,top: 40,left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             children: [
                             Image.asset("assets/images/flag.png",fit: BoxFit.cover,height: 25,),
                             SizedBox(width: 50,),
                             Text("Total",style: GoogleFonts.quicksand(
                             color: Colors.redAccent,
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                             ),)
                           ],),
                           Row(
                             children: [
                               Text("Conformed",style: GoogleFonts.quicksand(
                                 fontSize: 15,
                                 fontWeight: FontWeight.w600
                               ),),
                               SizedBox(width: 20,),
                               Text(daata["India"]["All"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                               fontSize: 15,
                                 color: Colors.orange[500],
                                 fontWeight: FontWeight.bold
                               ))
                             ],
                           ),
                             SizedBox(height: 10,),
                             Row(
                             children: [
                               Text("Recovered",style: GoogleFonts.quicksand(
                                 fontSize: 15,
                                 fontWeight: FontWeight.w600
                               )),  SizedBox(width: 20,),
                               Text(daata["India"]["All"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                 fontSize:15,
                                 color: Colors.green,
                                 fontWeight: FontWeight.bold
                               ))
                             ],
                           ),
                          SizedBox(height: 10,),
                           Row(
                             children: [
                               Text("Deaths",style: GoogleFonts.quicksand(
                                 fontSize: 15,
                                 fontWeight: FontWeight.w600
                               )),  SizedBox(width: 20,),
                               Text(daata["India"]["All"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.redAccent
                               ))
                             ],
                           ),
                           SizedBox(height: 10,),
                              Row(
                             children: [
                               Text("Population",style: GoogleFonts.quicksand(
                                 fontSize: 15,
                                 fontWeight: FontWeight.w600
                               )),  SizedBox(width: 20,),
                               Text(daata["India"]["All"]["population"].toString(),style: GoogleFonts.quicksand(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.blueAccent
                               ))
                             ],
                           ),
                                 SizedBox(height: 10,),
                            Row(
                               children: [
                                 Text("Life Expectancy Rate ",style: GoogleFonts.quicksand(
                                   fontSize: 15,
                                   fontWeight: FontWeight.w600
                                 )),  SizedBox(width: 5,),
                                 Text(daata["India"]["All"]["life_expectancy"].toString()+"%",style: GoogleFonts.quicksand(
                                   fontSize: 15,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.amber
                                 )),
                                
                                ],
                           
                             ),
                           
                         ],
                       ),
                  ),

                   ],
                 ),
               ),
             );
             });
          }
         }
    );
  }
}
   