
import 'package:cudo_ride/auth/update.dart';
import 'package:cudo_ride/widget/big_text.dart';
import 'package:cudo_ride/widget/static/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(
          color: Color(0xffFF9E00),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 60),
            width: 250,
            child: BigText(
                text: 'Enter the 4 digit codes sent to you ',
                color: AppColors.blueColor,
                fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            height: 100,
            child: Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            // ignore: prefer_const_constructors
                            borderSide: BorderSide(
                              // ignore: prefer_const_constructors
                              color: Color(0xff1A214F),
                            ),
                            borderRadius: BorderRadius.circular(7))),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff1A214F),
                            ),
                            borderRadius: BorderRadius.circular(7))),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff1A214F),
                            ),
                            borderRadius: BorderRadius.circular(7))),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff1A214F),
                            ),
                            borderRadius: BorderRadius.circular(7))),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ],
            )),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                  child: SizedBox(
                    width: 90,
                    height: 50,
                    // ignore: sort_child_properties_last
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            //please change Dashboard to Register
                            builder: (context) => OtpPage(),
                          ),
                        );
                      },
                      // ignore: sort_child_properties_last
                      child: BigText(
                        text: "Resend",
                        fontWeight: FontWeight.bold,
                        size: 14,
                        color: AppColors.blueColor,
                      ),

                      style: ElevatedButton.styleFrom(
                        primary: AppColors
                            .yellowColor, //change background color of button
                        // onPrimary: Colors.yellow, //change text color of button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    // ignore: sort_child_properties_last
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            //please change Dashboard to Register
                            builder: (context) => Update(),
                          ),
                        );
                      },
                      // ignore: sort_child_properties_last
                      child: BigText(
                        text: "Next",
                        fontWeight: FontWeight.bold,
                        size: 14,
                        color: AppColors.blueColor,
                      ),

                      style: ElevatedButton.styleFrom(
                        primary: AppColors
                            .yellowColor, //change background color of button
                        // onPrimary: Colors.yellow, //change text color of button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
