import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routename = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isitemselected = false;
  bool firstselected = false;
  bool secselected = false;
  bool thirdselected = false;
  bool fourselected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
            body: isitemselected == false
                ? getnoitemselected(context)
                : firstselected == true && isitemselected == true
                    ? getfirstitemselected(context)
                    : secselected == true && isitemselected == true
                        ? getsectemselected(context)
                        : thirdselected == true && isitemselected == true
                            ? getthirdtemselected(context)
                            : getfourtemselected(context)));
  }

  Widget getnoitemselected(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black87,
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 60, bottom: 60),
                  color: Colors.black87,
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/images/etisalat.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            AnimatedPositioned(
              top: 200,
              left: 30,
              duration: Duration(seconds: 1),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (firstselected == true) {
                      firstselected = false;
                      isitemselected = false;
                    } else {
                      firstselected = true;
                      isitemselected = true;
                    }
                  });
                },
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: 90,
                    height: 90,
                    child: Image.asset(
                      'assets/images/cities.jpg',
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ))),
              ),
            ),
            //text(smartcities)
            AnimatedContainer(
                margin: EdgeInsets.only(top: 300, left: 55),
                width: 45,
                height: 45,
                duration: Duration(seconds: 1),
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  child: Text('Smart Cities'),
                )),

            AnimatedPositioned(
              top: 200,
              right: MediaQuery.of(context).size.width * 0.1,
              duration: Duration(seconds: 1),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (secselected == true) {
                      secselected = false;
                      isitemselected = false;
                    } else {
                      secselected = true;
                      isitemselected = true;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Image.asset(
                    'assets/images/finger.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            AnimatedContainer(
                margin: EdgeInsets.only(
                    top: 300, left: MediaQuery.of(context).size.width * 0.65),
                width: 100,
                height: 45,
                duration: Duration(seconds: 1),
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  child: Text('Digital Transformation',
                      textAlign: TextAlign.center),
                )),

            AnimatedPositioned(
              top: 450,
              left: 30,
              duration: Duration(seconds: 1),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (thirdselected == true) {
                      thirdselected = false;
                      isitemselected = false;
                    } else {
                      thirdselected = true;
                      isitemselected = true;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Image.asset(
                    'assets/images/security.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            AnimatedContainer(
                margin: EdgeInsets.only(top: 550, left: 55),
                width: 100,
                height: 45,
                duration: Duration(seconds: 1),
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  child: Text('Security'),
                )),
            AnimatedPositioned(
              top: 450,
              right: MediaQuery.of(context).size.width * 0.1,
              duration: Duration(seconds: 1),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (fourselected == true) {
                      fourselected = false;
                      isitemselected = false;
                    } else {
                      fourselected = true;
                      isitemselected = true;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Image.asset(
                    'assets/images/health.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            AnimatedContainer(
                margin: EdgeInsets.only(
                    top: 550, left: MediaQuery.of(context).size.width * 0.65),
                width: 100,
                height: 45,
                duration: Duration(seconds: 1),
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  child: Text('Health', textAlign: TextAlign.center),
                )),
          ],
        )
      ],
    );
  }

  Widget getfirstitemselected(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black87,
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 60, bottom: 60),
                  color: Colors.black87,
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/images/etisalat.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            AnimatedPositioned(
              top: 220,
              left: MediaQuery.of(context).size.width * 0.36,
              duration: Duration(seconds: 1),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (firstselected == true) {
                      firstselected = false;
                      isitemselected = false;
                    } else {
                      firstselected = true;
                      isitemselected = true;
                    }
                  });
                },
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: 110,
                    height: 110,
                    child: Image.asset(
                      'assets/images/cities.jpg',
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ))),
              ),
            ),
            AnimatedPositioned(
                right: MediaQuery.of(context).size.width * 0.65,
                top: 450,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      firstselected = false;
                      secselected = true;
                      isitemselected = true;
                    });
                  },
                  child: Container(
                    //margin: EdgeInsets.only(left: 30),
                    padding: EdgeInsets.all(20),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),

                    child: Image.asset(
                      'assets/images/finger.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                duration: Duration(seconds: 2)),
            AnimatedPositioned(
                top: 450,
                left: MediaQuery.of(context).size.width * 0.375,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      firstselected = false;
                      thirdselected = true;
                      isitemselected = true;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Image.asset(
                      'assets/images/security.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                duration: Duration(seconds: 1)),
            AnimatedPositioned(
                top: 450,
                right: MediaQuery.of(context).size.width * 0.1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      firstselected = false;
                      fourselected = true;
                      isitemselected = true;
                      print(fourselected);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    padding: EdgeInsets.all(20),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Image.asset(
                      'assets/images/health.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                duration: Duration(seconds: 1)),
            AnimatedContainer(
                margin: EdgeInsets.only(
                    top: 340, left: MediaQuery.of(context).size.width * 0.39),
                width: 100,
                height: 45,
                duration: Duration(seconds: 1),
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  child: Text('Smart Cities'),
                )),
            Container(
                margin: EdgeInsets.only(
                    top: 360, left: MediaQuery.of(context).size.width * 0.39),
                width: 200,
                height: 45,
                child: Text('Now Playing..',
                    style: TextStyle(color: Colors.white, fontSize: 16))),
          ],
        )
      ],
    );
  }

  Widget getsectemselected(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black87,
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 60, bottom: 60),
                  color: Colors.black87,
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/images/etisalat.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            AnimatedPositioned(
                top: 450,
                left: MediaQuery.of(context).size.width * 0.1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      secselected = false;
                      firstselected = true;
                      isitemselected = true;
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: 90,
                      height: 90,
                      child: Image.asset(
                        'assets/images/cities.jpg',
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ))),
                ),
                duration: Duration(seconds: 1)),
            AnimatedPositioned(
              top: 220,
              right: MediaQuery.of(context).size.width * 0.33,
              duration: Duration(seconds: 1),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (secselected == false) {
                      isitemselected = true;
                      secselected = true;
                    } else {
                      isitemselected = false;
                      secselected = false;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Image.asset(
                    'assets/images/finger.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
                top: 450,
                left: MediaQuery.of(context).size.width * 0.375,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      secselected = false;
                      thirdselected = true;
                      isitemselected = true;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Image.asset(
                      'assets/images/security.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                duration: Duration(seconds: 1)),
            AnimatedPositioned(
                top: 450,
                right: MediaQuery.of(context).size.width * 0.1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      secselected = false;
                      fourselected = true;
                      isitemselected = true;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Image.asset(
                      'assets/images/health.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                duration: Duration(seconds: 1)),
            AnimatedContainer(
                margin: EdgeInsets.only(
                    top: 340, left: MediaQuery.of(context).size.width * 0.25),
                width: 200,
                height: 45,
                duration: Duration(seconds: 1),
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  child: Text(
                    'Digital Tranformation',
                    textAlign: TextAlign.center,
                  ),
                )),
            Container(
                margin: EdgeInsets.only(
                    top: 360, left: MediaQuery.of(context).size.width * 0.39),
                width: 200,
                height: 45,
                child: Text('Now Playing..',
                    style: TextStyle(color: Colors.white, fontSize: 16))),
          ],
        )
      ],
    );
  }

  Widget getthirdtemselected(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black87,
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 60, bottom: 60),
                  color: Colors.black87,
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/images/etisalat.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            AnimatedPositioned(
                top: 450,
                left: MediaQuery.of(context).size.width * 0.1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      thirdselected = false;
                      firstselected = true;
                      isitemselected = true;
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: 90,
                      height: 90,
                      child: Image.asset(
                        'assets/images/cities.jpg',
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ))),
                ),
                duration: Duration(seconds: 1)),
            AnimatedPositioned(
                top: 450,
                right: MediaQuery.of(context).size.width * 0.1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      thirdselected = false;
                      secselected = true;
                      isitemselected = true;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Image.asset(
                      'assets/images/finger.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                duration: Duration(seconds: 1)),
            AnimatedPositioned(
              top: 220,
              left: MediaQuery.of(context).size.width * 0.36,
              duration: Duration(seconds: 1),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (thirdselected == false) {
                      isitemselected = true;
                      thirdselected = true;
                    } else {
                      isitemselected = false;
                      thirdselected = false;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Image.asset(
                    'assets/images/security.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
                top: 450,
                right: MediaQuery.of(context).size.width * 0.375,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      thirdselected = false;
                      fourselected = true;
                      isitemselected = true;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Image.asset(
                      'assets/images/health.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                duration: Duration(seconds: 1)),
            AnimatedContainer(
                margin: EdgeInsets.only(
                    top: 340, left: MediaQuery.of(context).size.width * 0.24),
                width: 200,
                height: 45,
                duration: Duration(seconds: 1),
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  child: Text(
                    'Security',
                    textAlign: TextAlign.center,
                  ),
                )),
            Container(
                margin: EdgeInsets.only(
                    top: 360, left: MediaQuery.of(context).size.width * 0.39),
                width: 200,
                height: 45,
                child: Text('Now Playing..',
                    style: TextStyle(color: Colors.white, fontSize: 16))),
          ],
        )
      ],
    );
  }

  Widget getfourtemselected(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black87,
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 60, bottom: 60),
                  color: Colors.black87,
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/images/etisalat.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            AnimatedPositioned(
                top: 450,
                left: MediaQuery.of(context).size.width * 0.1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      fourselected = false;
                      firstselected = true;
                      isitemselected = true;
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: 90,
                      height: 90,
                      child: Image.asset(
                        'assets/images/cities.jpg',
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ))),
                ),
                duration: Duration(seconds: 1)),
            AnimatedPositioned(
                top: 450,
                right: MediaQuery.of(context).size.width * 0.1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      fourselected = false;
                      secselected = true;
                      isitemselected = true;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Image.asset(
                      'assets/images/finger.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                duration: Duration(seconds: 1)),
            AnimatedPositioned(
              top: 450,
              left: MediaQuery.of(context).size.width * 0.375,
              duration: Duration(seconds: 1),
              child: InkWell(
                onTap: () {
                  setState(() {
                    fourselected = false;
                    thirdselected = true;
                    isitemselected = true;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Image.asset(
                    'assets/images/security.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
                top: 220,
                right: MediaQuery.of(context).size.width * 0.33,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (fourselected == false) {
                        fourselected = true;
                        isitemselected = true;
                      } else {
                        fourselected = false;
                        isitemselected = false;
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Image.asset(
                      'assets/images/health.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                duration: Duration(seconds: 1)),
            AnimatedContainer(
                margin: EdgeInsets.only(
                    top: 340, left: MediaQuery.of(context).size.width * 0.24),
                width: 200,
                height: 45,
                duration: Duration(seconds: 1),
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  child: Text(
                    'Health',
                    textAlign: TextAlign.center,
                  ),
                )),
            Container(
                margin: EdgeInsets.only(
                    top: 360, left: MediaQuery.of(context).size.width * 0.39),
                width: 200,
                height: 45,
                child: Text('Now Playing..',
                    style: TextStyle(color: Colors.white, fontSize: 16))),
          ],
        )
      ],
    );
  }
}
