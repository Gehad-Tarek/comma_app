import 'package:comma_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import '../providers/tasks_provider.dart';

class TasksScreen extends StatefulWidget {
  static const routeName = "/tasks";

  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.blue[100],
            child: Container(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Contact Us",
                      style: TextStyle(
                          fontSize: 24,
                          color:  Constants.kBlueNewLogoColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "  Hello, we here to fix your problem",
                    style: TextStyle(
                      fontSize: 19,
                      color:   Constants.kBlueNewLogoColor,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "  Few seconds and you will got response",
                    style: TextStyle(
                      fontSize: 19,
                      color: Constants.kBlueNewLogoColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15, left: 6, right: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 1,
                        color: Constants.kBlueNewLogoColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 3,
                         color: Constants.kBlueNewLogoColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: "Title",
                  ),
                  onChanged: (value) {
                    // provider.taskName = value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Task Details",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 1,
                         color: Constants.kBlueNewLogoColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onChanged: (value) {
                    // provider.taskDetails = value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Attach Material",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ).add(
                        const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.image,
                              size: 35,
                            ),
                          ),
                          const Text("Attach Images")
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ).add(
                        const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.file_copy_sharp,
                              size: 35,
                            ),
                          ),
                          const Text("Attach Files")
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 350,
                    margin: const EdgeInsets.only(top: 15),
                    child: ElevatedButton(
                      onPressed: () {
                        // provider.sendTask();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Constants.kBlueNewLogoColor,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Send",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
  }
}
