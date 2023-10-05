import 'package:comma_app/constants/constants.dart';
import 'package:comma_app/screens/Reports_screen/chart_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<StatefulWidget> createState() => ReportsScreenState();
}

class ReportsScreenState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    const List<String> list1 = <String>[
      "filter by Date",
    ];
    const List<String> list2 = <String>[
      "filter by campagin",
    ];
    String dropdownValue1 = list1.first;
    String dropdownValue2 = list2.first;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title:  Text(
          "Campain Report",
          style: TextStyle(color:   Constants.kBlueNewLogoColor,),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                   height: 40,
                        width: 170,
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),
                  decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[350],
                        ),
                  child: Center(
                    child: DropdownButton(
                      value: dropdownValue1,
                      items:
                          list1.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: ((value) {}),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                Container(
                  height: 40,
                        width: 170,
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),
                  decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[350],
                        ),
                  child: Center(
                    child: DropdownButton(
                      value: dropdownValue2,
                      items:
                          list2.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: ((value) {}),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: height * .1,
              margin: EdgeInsets.only(
                top: height * .025,
                left: width * .035,
                right: width * .035,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Campagin: ",
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 16),
                            ),
                            const Text("Villa"),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Text("Date: ",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                )),
                            const Text("1/9/2023"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          "Total leads: ",
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 16),
                        ),
                        const Text("20"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              margin: EdgeInsets.only(
                top: height * .025,
                left: width * .035,
                right: width * .035,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: height * .7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 18,
                  ),
                  SizedBox(
                    height: height * .2,
                    width: 500,
                    child: PieChart(
                      PieChartData(
                        pieTouchData: PieTouchData(
                          touchCallback:
                              (FlTouchEvent event, pieTouchResponse) {
                            setState(() {
                              if (!event.isInterestedForInteractions ||
                                  pieTouchResponse == null ||
                                  pieTouchResponse.touchedSection == null) {
                                touchedIndex = -1;
                                return;
                              }
                              touchedIndex = pieTouchResponse
                                  .touchedSection!.touchedSectionIndex;
                            });
                          },
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        sections: showingSections(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 100.0,
                      top: 52,
                    ),
                    child: Column(
                      children:  <Widget>[
                        Indicator(
                          color:   Constants.kBlueNewLogoColor,
                          text: 'follow up',
                          isSquare: true,
                        ),
                       const SizedBox(
                          height: 4,
                        ),
                      const  Indicator(
                          color: Color(0xfff8b250),
                          text: 'leading',
                          isSquare: true,
                        ),
                     const   SizedBox(
                          height: 4,
                        ),
                   const     Indicator(
                          color: Color(0xff13d38e),
                          text: 'meeting',
                          isSquare: true,
                        ),
                      const  Indicator(
                          color: Color(0xff845bef),
                          text: 'not intersted',
                          isSquare: true,
                        ),
                       const SizedBox(
                          height: 4,
                        ),
                    const    Indicator(
                          color: Color(0xff13d38e),
                          text: 'no answer',
                          isSquare: true,
                        ),
                  const      SizedBox(
                          height: 4,
                        ),
                     const   Indicator(
                          color: Color.fromARGB(255, 10, 116, 52),
                          text: 'done',
                          isSquare: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(6, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color:  Constants.kBlueNewLogoColor,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 20,
            title: '20%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        case 4:
          return PieChartSectionData(
            color: Color.fromARGB(255, 211, 19, 67),
            value: 10,
            title: '10%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        case 5:
          return PieChartSectionData(
            color: Color.fromARGB(255, 10, 116, 52),
            value: 25,
            title: '25%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        default:
          throw Error();
      }
    });
  }
}






// //import 'package:d_chart/d_chart.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class ReportsScreen extends StatelessWidget {
//   static const routeName = "/reports";
//   const ReportsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: (() {
//             Navigator.pop(context);
//           }),
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             color: Colors.blue,
//           ),
//         ),
//         title: const Text(
//           "Reports",
//           style: TextStyle(color: Colors.blue),
//         ),
//         backgroundColor: Colors.white,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           margin: const EdgeInsets.only(
//             top: 15,
//           ),
//           child: Column(
//             children: [
//               const Center(
//                 child: Text(
//                   "Total Leads",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 500,
//                 width: 500,
//                 child: PieChart(
//                   PieChartData(borderData: )
//                 ),
//                 // DChartPie(
//                 //   labelFontSize: 20,
//                 //   pieLabel: (pieData, index) {
//                 //     return "${pieData['domain']}:${pieData['measure']}%";
//                 //   },
//                 //     labelPosition: PieLabelPosition.auto,
               
//                 //   data: const [
//                 //     {'domain': 'follow up', 'measure': 28},
//                 //     {'domain': 'leading', 'measure': 27},
//                 //     {'domain': 'not intersted', 'measure': 20},
//                 //     {'domain': 'no answer', 'measure': 15},
//                 //   ],
//                 //   fillColor: (pieData, index) {
//                 //     switch (pieData['domain']) {
//                 //       case 'follow up':
//                 //         return Colors.green;
//                 //       case 'leading':
//                 //         return Colors.blue;
//                 //       case 'no answer':
//                 //         return Colors.orange;
//                 //       default:
//                 //         return Colors.red;
//                 //     }
//                 //   },
                 
                
//                 // ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
