import 'dart:convert';



import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as http;





class Statte extends StatefulWidget {
  @override
  _StatteState createState() => _StatteState();
}

class _StatteState extends State<Statte> {
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
             scrollDirection: Axis.horizontal,
             itemCount: 1,
             itemBuilder: (ctx,index){
             print(daata["All"]);
              
            return Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                  ),
                   height: MediaQuery.of(context).size.height*1,
                     child: Material(
                     elevation: 8,
                       borderRadius: BorderRadius.circular(50),
                      child:
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Maharastra",style:GoogleFonts.quicksand(
                                     fontSize: 15,
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                   ), 
                                   textAlign: TextAlign.center
                                   ,),
                                    Image.asset("assets/images/Maharastra.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                               Row(
                                 children: [
                                   Text("Conformed",style: GoogleFonts.quicksand(
                                     fontSize: 15,
                                     fontWeight: FontWeight.w600
                                   ),),
                                   SizedBox(width: 20,),
                                   Text(daata["India"]["Maharashtra"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                     fontSize: 15,
                                     color: Colors.indigo,
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
                                   Text(daata["India"]["Maharashtra"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                     fontSize:15,
                                     color: Colors.indigo,
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
                                   Text(daata["India"]["Maharashtra"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                     fontSize: 15,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.indigo
                                   ))
                                 ],
                               ),
                               SizedBox(height: 10,),
                                  Row(
                                 children: [
                                   Text("Updated",style: GoogleFonts.quicksand(
                                     fontSize: 15,
                                     fontWeight: FontWeight.w600
                                   )),  SizedBox(width: 20,),
                                   Text(daata["India"]["Maharashtra"]["updated"].toString(),style: GoogleFonts.quicksand(
                                     fontSize: 15,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.indigo
                                   ))
                                 ],
                               ),
                             ],
                           ),
                      ),

                     
                   ),
                 ),
                   Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Delhi",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/delhi.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Delhi"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Delhi"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Delhi"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Delhi"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),

                       
                     ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Uttar Pradesh",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Up.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Uttar Pradesh"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Uttar Pradesh"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Uttar Pradesh"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Uttar Pradesh"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),

                       
                     ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Karnataka",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Karnatak.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Karnataka"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Karnataka"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Karnataka"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Karnataka"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),

                       
                     ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Chhattisgarh ",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Chatishgarh.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Chhattisgarh"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Chhattisgarh"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Chhattisgarh"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Chhattisgarh"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),

                       
                     ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Kerala",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Kerla.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Kerala"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Kerala"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Kerala"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Kerala"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),

                       
                     ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Tamil Nadu",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Tamilnaadu.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Tamil Nadu"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Tamil Nadu"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Tamil Nadu"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Tamil Nadu"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),

                       
                     ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Madhya Pradesh",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/MadhyaPradesh.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Madhya Pradesh"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Madhya Pradesh"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Madhya Pradesh"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Madhya Pradesh"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Rajasthan",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Rj.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Rajasthan"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Rajasthan"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Rajasthan"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Rajasthan"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Gujarat",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Gujrat.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Gujarat"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Gujarat"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Gujarat"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Gujarat"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Kerala",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Kerla.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Kerala"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Kerala"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Kerala"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Kerala"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Andaman and Nicobar Islands",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/andman.png",fit: BoxFit.cover,height:100,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Andaman and Nicobar Islands"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Andaman and Nicobar Islands"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Andaman and Nicobar Islands"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Andaman and Nicobar Islands"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Andhra Pradesh",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Andra Pardesh.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Andhra Pradesh"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Andhra Pradesh"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Andhra Pradesh"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Andhra Pradesh"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Assam",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Asam.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Assam"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Assam"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Assam"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Assam"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Himachal Pradesh",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Himachal.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Himachal Pradesh"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Himachal Pradesh"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Himachal Pradesh"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Himachal Pradesh"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Punjab",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/PB.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Punjab"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Punjab"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Punjab"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Punjab"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Uttarakhand",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Uk.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Uttarakhand"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Uttarakhand"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Uttarakhand"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Uttarakhand"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("West Bengal",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Wb.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["West Bengal"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["West Bengal"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["West Bengal"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["West Bengal"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Odisha",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/odisha.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Odisha"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Odisha"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Odisha"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Odisha"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Jammu and Kashmir",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Jk.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Jammu and Kashmir"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Jammu and Kashmir"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Jammu and Kashmir"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Jammu and Kashmir"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Haryana",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/hr.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Haryana"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Haryana"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Haryana"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Haryana"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Goa",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/goa.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Goa"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Goa"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Goa"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Goa"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Chandigarh",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/cg.png",fit: BoxFit.cover,height:100,color: Colors.indigo,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Chandigarh"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Chandigarh"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Chandigarh"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Chandigarh"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:28.0),
                     child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                  ),
                      height: MediaQuery.of(context).size.height*1,
                       child: Material(
                       elevation: 8,
                         borderRadius: BorderRadius.circular(50),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Text("Arunachal Pradesh",style:GoogleFonts.quicksand(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold
                                     ) ,),
                                  Image.asset("assets/images/Ap.png",fit: BoxFit.cover,height:100,),
                                
                                 Row(
                                   children: [
                                     Text("Conformed",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     ),),
                                     SizedBox(width: 20,),
                                     Text(daata["India"]["Arunachal Pradesh"]["confirmed"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Arunachal Pradesh"]["recovered"].toString(),style: GoogleFonts.quicksand(
                                       fontSize:15,
                                       color: Colors.indigo,
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
                                     Text(daata["India"]["Arunachal Pradesh"]["deaths"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                                 SizedBox(height: 10,),
                                    Row(
                                   children: [
                                     Text("Updated",style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w600
                                     )),  SizedBox(width: 20,),
                                     Text(daata["India"]["Arunachal Pradesh"]["updated"].toString(),style: GoogleFonts.quicksand(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.indigo
                                     ))
                                   ],
                                 ),
                               ],
                             ),
                        ),
                        ),
                 ),
                   ),

              ],
            );
             });
          }
         }
    );
  }
}
   