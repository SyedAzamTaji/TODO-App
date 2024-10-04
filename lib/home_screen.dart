import 'package:flutter/material.dart';
import 'package:todoapp/add_screen.dart';

class HomeScreen extends StatefulWidget {
  final List<Map<String, dynamic>> info;
  const HomeScreen({super.key, required this.info});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Map<String, dynamic>> tasks;
  @override
  void initState() {
    tasks = List.from(widget.info);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8A9DFF).withOpacity(0.72),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Welcome to Notes",
                      style: TextStyle(
                          fontSize: 28,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("profileimage.jpg"),
                      radius: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Have a great Day",
                    style: TextStyle(fontSize: 24, color: Color(0xff000000)))),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "My Priority Task",
                style: TextStyle(fontSize: 24, color: Color(0xff000000)),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  width: 160,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffA6A6A6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10, left: 130),
                          child: Icon(
                            Icons.phone_android_rounded,
                            color: Color(0xffC7C7C7),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 5),
                        child: Text(
                          "2 hours Ago",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xffDADADA)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5),
                        child: Text("Mobile App \nUI Design",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFFFFF))),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5),
                        child: Text("using Figma \nand other tools",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffFFFFFF).withOpacity(0.58))),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 160,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffA6A6A6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10, left: 130),
                          child: Icon(
                            Icons.phone_android_rounded,
                            color: Color(0xffC7C7C7),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 5),
                        child: Text(
                          "2 hours Ago",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xffDADADA)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5),
                        child: Text("Mobile App \nUI Design",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xffFFFFFF))),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5),
                        child: Text("using Figma \nand other tools",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffFFFFFF).withOpacity(0.58))),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "My Tasks",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    final newTask = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddScreen()),
                    );

                    if (newTask != null) {
                      setState(() {
                        tasks.add(newTask);
                      });
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.all(24),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.add_circle,
                      size: 50,
                      color: const Color.fromARGB(255, 90, 229, 94),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Today’s Task",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)),
                  ),
                ),
                Container(
                  child: Text(
                    "WeeklyTask",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000).withOpacity(0.70)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "Monthly Task",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000).withOpacity(0.70)),
                  ),
                )
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    width: 379,
                    height: 120,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: Column(
                            children: [
                              Container(
                                child: Text("${tasks[index]["title"]} "),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(Icons.calendar_month_rounded),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: Text(
                                          "${tasks[index]["from"]} - ${tasks[index]["to"]}"),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text("${tasks[index]["des"]}"),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  tasks.removeAt(index);
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 60, right: 10),
                                child: Icon(Icons.delete),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                final editedTask = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddScreen(
                                      from: tasks[index]["from"],
                                      to: tasks[index]["to"],
                                      title: tasks[index]["title"],
                                      description: tasks[index]["des"],
                                    ),
                                  ),
                                );

                                if (editedTask != null) {
                                  setState(() {
                                    tasks[index] = editedTask;
                                  });
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 60, right: 10),
                                child: Icon(Icons.create),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
