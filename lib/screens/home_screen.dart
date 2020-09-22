import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_app_doctor_side/screens/qr_scanning_page.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HealthCare doctor Scanner',
          style: GoogleFonts.montserrat(
            fontSize: 20
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  left: 20.0,
                  right: 10.0,
                  bottom: 20,
                ),
                child: Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          child: Text(
                            'Click here to scan patient\'s QR code'
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => QRScanningPage()));
                        },
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
