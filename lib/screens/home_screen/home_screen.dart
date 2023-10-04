import 'package:comma_app/screens/Leads_Screen/Leads_screen.dart';
import 'package:comma_app/screens/Reports_screen/Reports_screen.dart';
import 'package:comma_app/screens/Requests_screen/Requests_screen.dart';
import 'package:comma_app/screens/Supscription_screen/Supscription_screen.dart';
import 'package:comma_app/screens/Tasks_screen/Tasks_screen.dart';
import 'package:comma_app/screens/Users_screen/Users_screen.dart';
import 'package:comma_app/screens/home_screen/home_screen_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = [
    const LeadsScreen(),
    const ReportsScreen(),
    const UsersScreen(),
    const TasksScreen(),
    const SupscriptionScreen(),
    const RequestsScreen(),
  ];
  final icons = [
    Icon(
      Icons.contact_page,
      color: Colors.blue[600],
    ),
    Icon(
      FontAwesomeIcons.fileCircleCheck,
      color: Colors.blue[600],
    ),
    Icon(
      Icons.textsms_sharp,
      color: Colors.blue[600],
      size: 28,
    ),
    Icon(
      Icons.support_agent,
      color: Colors.blue[600],
    ),
    Icon(
      FontAwesomeIcons.users,
      color: Colors.blue[600],
    ),
    Icon(
      FontAwesomeIcons.personShelter,
      color: Colors.blue[600],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 120,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon:const Icon(
                        Icons.notifications,
                      ),
                      color: Colors.blue,
                      iconSize: 40,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/logo.png",
                        scale: .5,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 335,
                    margin: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: const Center(
                        child: Text(
                      "Advertisement",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: HomescreenData.home.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                            width: 200,
                            height: 200,
                            margin: const EdgeInsets.only(
                              bottom: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  icons[index],
                                  Text(
                                    HomescreenData.home[index]['text']
                                        .toString(),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => screens[index],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
