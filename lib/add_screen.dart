import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  final String? from;
  final String? to;
  final String? title;
  final String? description;
  AddScreen({super.key, this.from, this.to, this.title, this.description});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.from != null) fromcontrol.text = widget.from!;
    if (widget.to != null) tocontrol.text = widget.to!;
    if (widget.title != null) titlecontrol.text = widget.title!;
    if (widget.description != null)
      descriptioncontrol.text = widget.description!;
  }

  TextEditingController fromcontrol = TextEditingController();

  TextEditingController tocontrol = TextEditingController();

  TextEditingController titlecontrol = TextEditingController();

  TextEditingController descriptioncontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8A9DFF).withOpacity(0.72),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Create new Task",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 50, top: 40),
                child: Text(
                  "From",
                  style: TextStyle(fontSize: 24, color: Color(0xff000000)),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, right: 100, top: 40),
                  child: Text(
                    "To",
                    style: TextStyle(fontSize: 24, color: Color(0xff000000)),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 20),
                color: Colors.white,
                width: 128,
                height: 40,
                child: TextField(
                  controller: fromcontrol,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "10:00 A.M",
                    hintStyle:
                        TextStyle(fontSize: 20, color: Color(0xff000000)),
                  ),
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                color: Colors.white,
                width: 128,
                height: 40,
                child: TextField(
                  controller: tocontrol,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "04:30 P.M",
                      hintStyle:
                          TextStyle(fontSize: 20, color: Color(0xff000000))),
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 40, right: 310, bottom: 10),
            child: Text(
              "Title",
              style: TextStyle(fontSize: 20, color: Color(0xff000000)),
            ),
          ),
          Container(
            width: 390,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextField(
              controller: titlecontrol,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, right: 260, bottom: 10),
            child: Text(
              "Desciption",
              style: TextStyle(fontSize: 20, color: Color(0xff000000)),
            ),
          ),
          Container(
            width: 390,
            height: 101,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextField(
              controller: descriptioncontrol,
              decoration: InputDecoration(border: InputBorder.none),
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 230),
            child: Text(
              "Choose Priority",
              style: TextStyle(fontSize: 20, color: Color(0xff000000)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 101,
                height: 31,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffDD1515)),
                child: Center(
                    child: Text(
                  "High",
                  style: TextStyle(fontSize: 20, color: Color(0xff000000)),
                )),
              ),
              Container(
                width: 101,
                height: 31,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffA6A6A6)),
                child: Center(
                    child: Text(
                  "Medium",
                  style: TextStyle(fontSize: 20, color: Color(0xff000000)),
                )),
              ),
              Container(
                width: 101,
                height: 31,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff79AF92)),
                child: Center(
                    child: Text(
                  "Low",
                  style: TextStyle(fontSize: 20, color: Color(0xff000000)),
                )),
              ),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            width: 374,
            height: 53,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  "from": fromcontrol.text,
                  "to": tocontrol.text,
                  "title": titlecontrol.text,
                  "des": descriptioncontrol.text
                });
              },
              child: Text(
                "Add",
                style: TextStyle(fontSize: 20, color: Color(0xff000000)),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xff79AF92)),
            ),
          ),
        ],
      ),
    );
  }
}
