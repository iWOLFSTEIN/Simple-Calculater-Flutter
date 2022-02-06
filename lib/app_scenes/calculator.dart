import 'dart:math';

import 'package:calculator_1/main.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCalculator();
  }
}

class MyCalculator extends State<Calculator> {
  var themesOfApp = Color.fromRGBO(24, 24, 24, 1);
  var themesOfApp1 = Color.fromRGBO(24, 24, 24, 1);

  var themeOfSunIcon = Color.fromRGBO(114, 114, 114, 1);
  var themeOfButtonGroupOne = Color.fromRGBO(49, 49, 49, 1);
  var equalButtonColor = Color.fromRGBO(109, 109, 109, 1);
  var equalButtonTextColor = Colors.white;
  var groupOneButtonTextColor = Colors.white;
  var calculatedTextColor = Colors.white;
  int index = 0;

  var defaultText = "0";
  var defaultCalculatedText = "";
  var primaryIcon;
  var secondaryIcon;
  var primaryIcon1;
  var secondaryIcon1;

  Widget calculatorDesign(
      BuildContext context, var height, var width, var iconArray) {
    return Container(
      color: themesOfApp1,
      child: SizedBox(
        // color: themesOfApp1,
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //  CrossAxisAlignment.end,

            //The first child of the column is Container which contains the sun icon

            GestureDetector(
              //  color: themesOfApp,

              child: Container(
                child: iconArray[index],
                margin: EdgeInsets.only(
                    left: width - ((width * 13) / 100),
                    top: (height * 2) / 100),
              ),

              onTap: () {
                setState(() {
                  if (index == 0) {
                    themesOfApp1 = Colors.white;

                    themesOfApp = Color.fromRGBO(250, 250, 250, 1);

                    themeOfButtonGroupOne = Color.fromRGBO(234, 248, 243, 1);

                    equalButtonColor = Color.fromRGBO(248, 218, 222, 1);

                    groupOneButtonTextColor = Color.fromRGBO(128, 217, 185, 1);

                    equalButtonTextColor = Color.fromRGBO(226, 95, 112, 1);

                    calculatedTextColor = Color.fromRGBO(71, 71, 71, 1);

                    index = 1;
                  } else if (index == 1) {
                    themesOfApp = Color.fromRGBO(24, 24, 24, 1);

                    themesOfApp1 = Color.fromRGBO(24, 24, 24, 1);

                    themeOfSunIcon = Color.fromRGBO(114, 114, 114, 1);

                    themeOfButtonGroupOne = Color.fromRGBO(49, 49, 49, 1);

                    equalButtonColor = Color.fromRGBO(109, 109, 109, 1);

                    equalButtonTextColor = Colors.white;

                    groupOneButtonTextColor = Colors.white;

                    calculatedTextColor = Colors.white;

                    index = 0;
                  }
                });
              },
            ),

            Container(),

            //The second container contains a text widget which contains the user input

            GestureDetector(
              onTap: () {
                setState(() {
                  if (defaultText != "0") {
                    defaultText =
                        defaultText.substring(0, defaultText.length - 1);
                  }

                  if (defaultText == "") {
                    defaultText = "0";
                  }
                });
              },
              onDoubleTap: () {
                setState(() {
                  defaultText = "0";
                });
              },
              child: Container(

                  // color: Colors.redAccent[100],

                  margin: EdgeInsets.only(

                      //   top: (height * 10.5) / 100,

                      right: (width * 7) / 100),
                  alignment: Alignment.centerRight,
                  child: Text(
                    defaultText,
                    style: TextStyle(
                        color: themeOfSunIcon,
                        fontSize: (width * 8) / 100,
                        fontFamily: 'Montserrat'),
                  )),
            ),

            // The third container contains a text widget which contains the calculated results

            GestureDetector(
              onTap: () {
                setState(() {
                  defaultCalculatedText = "";
                });
              },
              child: Container(
                //  color: Colors.blueAccent[100],

                margin: EdgeInsets.only(

                    //   top: (height * 2) / 100,

                    right: (width * 7) / 100),

                alignment: Alignment.centerRight,

                child: Text(
                  defaultCalculatedText,
                  style: TextStyle(
                    color: calculatedTextColor,
                    fontSize: (width * 12) / 100,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),

            Container(),

            // Fourth container contains a column which further has rows of buttons

            Container(

                // width: width,

                // height: height/2,

                //   color: Colors.greenAccent[100],

                margin: EdgeInsets.only(
                  left: (width * 7) / 100,

                  right: (width * 7) / 100,

                  //  top: (height * 10) / 100
                ),

                //  alignment: Alignment.centerRight,

                // This column contains the rows of buttons

                child: Column(
                  children: <Widget>[
                    //This is the first row

                    Row(children: <Widget>[
                      //First button of first row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themeOfButtonGroupOne,
                          primaryButtonTextColor: groupOneButtonTextColor,
                          buttonText: "+",
                          width: width,
                          weightOfFonts: FontWeight.w600),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Second button of first row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themeOfButtonGroupOne,
                          primaryButtonTextColor: groupOneButtonTextColor,
                          buttonText: "-",
                          width: width,
                          weightOfFonts: FontWeight.w600),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Third button of first row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themeOfButtonGroupOne,
                          primaryButtonTextColor: groupOneButtonTextColor,
                          buttonText: "x",
                          width: width,
                          weightOfFonts: FontWeight.w600),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Fourth button of first row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themeOfButtonGroupOne,
                          primaryButtonTextColor: groupOneButtonTextColor,
                          buttonText: "/",
                          width: width,
                          weightOfFonts: FontWeight.w600),
                    ]),

                    Container(
                      height: (width * 2) / 100,
                    ),

                    //This is the second row

                    Row(children: <Widget>[
                      //First button of Second row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themesOfApp,
                          primaryButtonTextColor: themeOfSunIcon,
                          buttonText: "7",
                          width: width),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Second button of second row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themesOfApp,
                          primaryButtonTextColor: themeOfSunIcon,
                          buttonText: "8",
                          width: width),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Third button of second row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themesOfApp,
                          primaryButtonTextColor: themeOfSunIcon,
                          buttonText: "9",
                          width: width),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Fourth button of second row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themeOfButtonGroupOne,
                          primaryButtonTextColor: groupOneButtonTextColor,
                          buttonText: "0",
                          width: width,
                          weightOfFonts: FontWeight.w600),
                    ]),

                    Container(
                      height: (width * 2) / 100,
                    ),

                    //This is the third row

                    Row(children: <Widget>[
                      //First button of third row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themesOfApp,
                          primaryButtonTextColor: themeOfSunIcon,
                          buttonText: "4",
                          width: width),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Second button of third row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themesOfApp,
                          primaryButtonTextColor: themeOfSunIcon,
                          buttonText: "5",
                          width: width),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Third button of third row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themesOfApp,
                          primaryButtonTextColor: themeOfSunIcon,
                          buttonText: "6",
                          width: width),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Fourth button of third row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themeOfButtonGroupOne,
                          primaryButtonTextColor: groupOneButtonTextColor,
                          buttonText: ".",
                          width: width,
                          weightOfFonts: FontWeight.w600),
                    ]),

                    Container(
                      height: (width * 2) / 100,
                    ),

                    //This is the fourth row

                    Row(children: <Widget>[
                      //First button of fourth row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themesOfApp,
                          primaryButtonTextColor: themeOfSunIcon,
                          buttonText: "1",
                          width: width),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Second button of fourth row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themesOfApp,
                          primaryButtonTextColor: themeOfSunIcon,
                          buttonText: "2",
                          width: width),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Third button of fourth row

                      calculatorButtons(context,
                          primaryButtonGroupColor: themesOfApp,
                          primaryButtonTextColor: themeOfSunIcon,
                          buttonText: "3",
                          width: width),

                      Container(
                        width: (width * 2) / 100,
                      ),

                      //Fourth button of fourth row

                      Expanded(
                          child: Container(
                        height: (width * 20) / 100,
                        child: RaisedButton(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          color: equalButtonColor,
                          child: Text(
                            "=",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: equalButtonTextColor,
                                fontSize: (width * 6) / 100,
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {
                            setState(
                              () {
                                defaultCalculatedText = "Fuck Off!";
                              },
                            );
                          },
                        ),
                      )),
                    ]),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget calculatorDesign1(BuildContext context,
      {var height, var width, var iconArray1}) {
    return Container(
      color: themesOfApp1,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //  CrossAxisAlignment.end,

          //The first child of the column is Container which contains the sun icon

          // Fourth container contains a column which further has rows of buttons

          Container(
              width: (height * 45) / 100,

              //   height: height,

              //   color: Colors.greenAccent[100],

              margin: EdgeInsets.only(
                  left: (height * 4) / 100, top: (width * 9) / 100),

              //  alignment: Alignment.centerRight,

              // This column contains the rows of buttons

              child: Column(
                children: <Widget>[
                  //This is the first row

                  Row(children: <Widget>[
                    //First button of first row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themeOfButtonGroupOne,
                        primaryButtonTextColor: groupOneButtonTextColor,
                        buttonText: "+",
                        width: width,
                        height: height,
                        weightOfFonts: FontWeight.w600),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Second button of first row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themeOfButtonGroupOne,
                        primaryButtonTextColor: groupOneButtonTextColor,
                        buttonText: "-",
                        width: width,
                        height: height,
                        weightOfFonts: FontWeight.w600),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Third button of first row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themeOfButtonGroupOne,
                        primaryButtonTextColor: groupOneButtonTextColor,
                        buttonText: "x",
                        width: width,
                        height: height,
                        weightOfFonts: FontWeight.w600),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Fourth button of first row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themeOfButtonGroupOne,
                        primaryButtonTextColor: groupOneButtonTextColor,
                        buttonText: "/",
                        width: width,
                        height: height,
                        weightOfFonts: FontWeight.w600),
                  ]),

                  Container(
                    height: (width * 2) / 100,
                  ),

                  //This is the second row

                  Row(children: <Widget>[
                    //First button of Second row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themesOfApp,
                        primaryButtonTextColor: themeOfSunIcon,
                        buttonText: "7",
                        width: width,
                        height: height),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Second button of second row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themesOfApp,
                        primaryButtonTextColor: themeOfSunIcon,
                        buttonText: "8",
                        width: width,
                        height: height),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Third button of second row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themesOfApp,
                        primaryButtonTextColor: themeOfSunIcon,
                        buttonText: "9",
                        width: width,
                        height: height),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Fourth button of second row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themeOfButtonGroupOne,
                        primaryButtonTextColor: groupOneButtonTextColor,
                        buttonText: "0",
                        width: width,
                        height: height,
                        weightOfFonts: FontWeight.w600),
                  ]),

                  Container(
                    height: (width * 2) / 100,
                  ),

                  //This is the third row

                  Row(children: <Widget>[
                    //First button of third row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themesOfApp,
                        primaryButtonTextColor: themeOfSunIcon,
                        buttonText: "4",
                        width: width,
                        height: height),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Second button of third row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themesOfApp,
                        primaryButtonTextColor: themeOfSunIcon,
                        buttonText: "5",
                        width: width,
                        height: height),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Third button of third row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themesOfApp,
                        primaryButtonTextColor: themeOfSunIcon,
                        buttonText: "6",
                        width: width,
                        height: height),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Fourth button of third row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themeOfButtonGroupOne,
                        primaryButtonTextColor: groupOneButtonTextColor,
                        buttonText: ".",
                        width: width,
                        height: height,
                        weightOfFonts: FontWeight.w600),
                  ]),

                  Container(
                    height: (width * 2) / 100,
                  ),

                  //This is the fourth row

                  Row(children: <Widget>[
                    //First button of fourth row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themesOfApp,
                        primaryButtonTextColor: themeOfSunIcon,
                        buttonText: "1",
                        width: width,
                        height: height),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Second button of fourth row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themesOfApp,
                        primaryButtonTextColor: themeOfSunIcon,
                        buttonText: "2",
                        width: width,
                        height: height),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Third button of fourth row

                    calculatorButtons(context,
                        primaryButtonGroupColor: themesOfApp,
                        primaryButtonTextColor: themeOfSunIcon,
                        buttonText: "3",
                        width: width,
                        height: height),

                    Container(
                      width: (width * 2) / 100,
                    ),

                    //Fourth button of fourth row

                    Expanded(
                        child: Container(
                      height: (width * 20) / 100,
                      child: RaisedButton(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: equalButtonColor,
                        child: Text(
                          "=",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: equalButtonTextColor,
                              fontSize: (width * 6) / 100,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              defaultCalculatedText = "Fuck Off!";
                            },
                          );
                        },
                      ),
                    )),
                  ]),
                ],
              )),

          Expanded(child: Container()),

          Container(
              width: (height * 45) / 100,
              // height: height,

              margin: EdgeInsets.only(
                  right: (height * 3) / 100, top: (width * 9) / 100),
              child: Column(children: <Widget>[
                GestureDetector(
                  //  color: themesOfApp,

                  child: Container(
                    child: iconArray1[index],
                    // margin: EdgeInsets.only(
                    //     left: width - ((width * 13) / 100),
                    //     top: (height * 2) / 100),
                    alignment: Alignment.centerRight,
                  ),

                  onTap: () {
                    setState(() {
                      if (index == 0) {
                        themesOfApp1 = Colors.white;

                        themesOfApp = Color.fromRGBO(250, 250, 250, 1);

                        themeOfButtonGroupOne =
                            Color.fromRGBO(234, 248, 243, 1);

                        equalButtonColor = Color.fromRGBO(248, 218, 222, 1);

                        groupOneButtonTextColor =
                            Color.fromRGBO(128, 217, 185, 1);

                        equalButtonTextColor = Color.fromRGBO(226, 95, 112, 1);

                        calculatedTextColor = Color.fromRGBO(71, 71, 71, 1);

                        index = 1;
                      } else if (index == 1) {
                        themesOfApp = Color.fromRGBO(24, 24, 24, 1);

                        themesOfApp1 = Color.fromRGBO(24, 24, 24, 1);

                        themeOfSunIcon = Color.fromRGBO(114, 114, 114, 1);

                        themeOfButtonGroupOne = Color.fromRGBO(49, 49, 49, 1);

                        equalButtonColor = Color.fromRGBO(109, 109, 109, 1);

                        equalButtonTextColor = Colors.white;

                        groupOneButtonTextColor = Colors.white;

                        calculatedTextColor = Colors.white;

                        index = 0;
                      }
                    });
                  },
                ),

                Container(),

                //The second container contains a text widget which contains the user input

                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (defaultText != "0") {
                        defaultText =
                            defaultText.substring(0, defaultText.length - 1);
                      }

                      if (defaultText == "") {
                        defaultText = "0";
                      }
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      defaultText = "0";
                    });
                  },
                  child: Container(

                      // color: Colors.redAccent[100],

                      margin: EdgeInsets.only(
                          top: (width * 6) / 100, right: (height * 2) / 100),
                      alignment: Alignment.centerRight,
                      child: Text(
                        defaultText,
                        style: TextStyle(
                            color: themeOfSunIcon,
                            fontSize: (width * 7) / 100,
                            fontFamily: 'Montserrat'),
                      )),
                ),

                // The third container contains a text widget which contains the calculated results

                GestureDetector(
                  onTap: () {
                    setState(() {
                      defaultCalculatedText = "";
                    });
                  },
                  child: Container(
                    //  color: Colors.blueAccent[100],

                    margin: EdgeInsets.only(
                        top: (width * 1) / 100, right: (height * 2) / 100),

                    alignment: Alignment.centerRight,

                    child: Text(
                      defaultCalculatedText,
                      style: TextStyle(
                        color: calculatedTextColor,
                        fontSize: (width * 11) / 100,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),

                Container(),

                //The fourth container contains buttons
                Container(
                  margin: EdgeInsets.only(top: (width * 1.5) / 100),
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        //First button of first row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "s",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),
                        //second button of first row
                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "+",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

                        //third button of first row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "+",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

                        //fourth button of first row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "+",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

                        //fifth button of first row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "0",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),
                      ]),

                      Container(
                        height: (width * 1) / 100,
                      ),
// Second row begins
                      Row(children: <Widget>[
                        //First button of second row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "+",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

//second button of second row
                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "+",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

                        //third button of second row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "-",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

                        //fourth button of second row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "x",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

                        //fifth button of second row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "/",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),
                      ]),

                      Container(
                        height: (width * 1) / 100,
                      ),

                      //Third row begins here
                      Row(children: <Widget>[
                        //First button of third row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "+",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

                        //second button of third row
                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "+",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

                        //third button of third row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "-",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

                        //fouth button of third row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "x",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),

                        Container(
                          width: (width * 2) / 100,
                        ),

                        //fifth button of third row

                        calculatorButtons(context,
                            primaryButtonGroupColor: themeOfButtonGroupOne,
                            primaryButtonTextColor: groupOneButtonTextColor,
                            buttonText: "/",
                            width: width / 1.35,
                            height: height,
                            weightOfFonts: FontWeight.w600),
                      ]),
                    ],
                  ),
                ),
              ])),
        ],
      ),
    );
  }

// method of buttons
  Widget calculatorButtons(BuildContext context,
      {var primaryButtonGroupColor,
      var primaryButtonTextColor,
      var buttonText,
      var width,
      var height,
      var weightOfFonts = FontWeight.w500}) {
    return Expanded(
        child: Container(
            height: (width * 20) / 100,
            child: RaisedButton(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: primaryButtonGroupColor,
                child: Text(
                  buttonText,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: primaryButtonTextColor,
                      fontSize: (width * 6) / 100,
                      fontWeight: weightOfFonts),
                ),
                onPressed: () {
                  setState(() {
                    if (defaultText == "0") {
                      defaultText = buttonText;
                    } else {
                      if (defaultText.length < 14) {
                        defaultText += buttonText;
                      }
                    }
                  });
                })));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    var height1;
    var width1;

    primaryIcon = Icon(
      Icons.wb_sunny,
      color: Color.fromRGBO(114, 114, 114, 1),
      size: (width * 6.5) / 100,
    );
    secondaryIcon = Icon(
      Icons.brightness_3,
      color: Color.fromRGBO(74, 74, 74, 1),
      size: (width * 6.5) / 100,
    );

    var iconArray = [primaryIcon, secondaryIcon];

    primaryIcon1 = Icon(
      Icons.wb_sunny,
      color: Color.fromRGBO(114, 114, 114, 1),
      size: (height * 6.5) / 100,
    );
    secondaryIcon1 = Icon(
      Icons.brightness_3,
      color: Color.fromRGBO(74, 74, 74, 1),
      size: (height * 6.5) / 100,
    );

    var iconArray1 = [primaryIcon1, secondaryIcon1];

    // Main Container which contain the whole screen

    return
        //calculatorDesign(context, height, width, iconArray);
        LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth<600) {
          return calculatorDesign(context, height, width, iconArray);
        } else {
          // var swaper;
          // swaper=width;
          // width = height;
          // height = swaper;
          width1 = height;
          height1 = width;

          return calculatorDesign1(context,
              height: height1, width: width1, iconArray1: iconArray1);
        }
      },
    );
  }
}
