import 'package:comma_app/constants/constants.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  static const routeName = "/users";

  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Sales Men",
          style: TextStyle(
            color: Constants.kBlueNewLogoColor,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
       // physics:const NeverScrollableScrollPhysics(),
        children: [
        //  Text('data'),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
           physics:const NeverScrollableScrollPhysics(),
         // physics:const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(top: height * 0.025),
            margin: EdgeInsets.only(
                left: width * 0.04, right: width * 0.04, top: height * 0.015),
            height: height * 0.13,
            width: width * 0.4,
            decoration: BoxDecoration(
              color: Constants.kMaintBlueColor,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              leading:const CircleAvatar(
                radius: 30,
                // maxRadius: 30,
                backgroundImage: NetworkImage(
                    'data:image/jpeg;base64,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'),
              ),
              title:const Text('Mohamed',maxLines: 1,),
              subtitle:const Text('comma@gmail.com',maxLines: 1,softWrap: true,overflow: TextOverflow.ellipsis,),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('8:45 pm'),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Constants.kBlueNewLogoColor,
                  ),
                ],
              ),
            ),
          );
        }),
      ]),

      // body: SafeArea(
      //   child: SingleChildScrollView(
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 0.0),
      //       child: Column(
      //         children: [
      //           Container(
      //             margin: const EdgeInsets.only(
      //               top: 10,
      //             ).add(
      //               const EdgeInsets.symmetric(
      //                 horizontal: 12,
      //               ),
      //             ),
      //             padding: const EdgeInsets.symmetric(
      //               horizontal: 10,
      //               vertical: 10,
      //             ),
      //             height: 170,
      //             width: double.infinity,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(25),
      //               color: Colors.white,
      //             ),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Row(
      //                   children: [
      //                     const Text(
      //                       "Sales Name: ",
      //                       style: TextStyle(
      //                         fontSize: 17,
      //                         fontWeight: FontWeight.w500,
      //                       ),
      //                     ),
      //                     const Text(
      //                       "Nourhan Abd EL fattah",
      //                       style: TextStyle(
      //                         fontSize: 14,
      //                       ),
      //                     ),
      //                     TextButton(
      //                       child:  Text(
      //                         "Edit",
      //                         style: TextStyle(
      //                           fontSize: 15,
      //                           color:   Constants.kBlueNewLogoColor,
      //                         ),
      //                       ),
      //                       onPressed: () {},
      //                     ),
      //                   ],
      //                 ),
      //                 Row(
      //                   children: const [
      //                     Text(
      //                       "Email: ",
      //                       style: TextStyle(
      //                         fontSize: 18,
      //                         fontWeight: FontWeight.w500,
      //                       ),
      //                     ),
      //                     Text(
      //                       "Nourhan710@gmail.com",
      //                       style: TextStyle(
      //                         fontSize: 16,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 const SizedBox(
      //                   height: 15,
      //                 ),
      //                 Row(
      //                   children: const [
      //                     Text(
      //                       "Creation Date: ",
      //                       style: TextStyle(
      //                         fontSize: 16,
      //                         fontWeight: FontWeight.w500,
      //                       ),
      //                     ),
      //                     Text(
      //                       "10/9/2022",
      //                       style: TextStyle(fontSize: 16),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 10,
      //           ),
      //           Center(
      //             child: Container(
      //               width: MediaQuery.of(context).size.width * .8,
      //               height: MediaQuery.of(context).size.height * .065,
      //               margin: EdgeInsets.only(
      //                 top: MediaQuery.of(context).size.height * .035,
      //               ),
      //               child: ElevatedButton(
      //                 // ignore: sort_child_properties_last
      //                 child: const Text(
      //                   "Create User",
      //                   style: TextStyle(
      //                     fontSize: 20,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //                 onPressed: () {},
      //                 style: ElevatedButton.styleFrom(
      //                   backgroundColor:  Constants.kBlueNewLogoColor,
      //                   elevation: 5,
      //                   shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(
      //                       8,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
