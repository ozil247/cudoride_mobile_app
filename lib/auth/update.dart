// ignore_for_file: prefer_const_constructors

import 'package:cudo_ride/dashboard.dart';
import 'package:cudo_ride/home.dart';
import 'package:cudo_ride/widget/big_text.dart';
import 'package:cudo_ride/widget/small_text.dart';
import 'package:cudo_ride/widget/static/color.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const BackButton(
              color: Color(0xffFF9E00),
            ),
            backgroundColor: AppColors.blueColor,
            title: BigText(
              text: 'Profile Update',
              fontWeight: FontWeight.bold,
              color: AppColors.yellowColor,
            )),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: 105,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'First Name'),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Second Name',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'Email'),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()))
                      },
                      // ignore: sort_child_properties_last
                      child: BigText(
                        text: "Submit",
                        color: AppColors.blueColor,
                        fontWeight: FontWeight.normal,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.yellowColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
