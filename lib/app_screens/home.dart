import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          padding: EdgeInsets.only(
            left: 10.0,
            top: 40.0,
          ),
          // width: 200.0,
          // height: 100.0,
          // margin: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Spice jet',
                    textDirection: TextDirection.ltr,
                    style: GoogleFonts.roboto(
                      decoration: TextDecoration.none,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'From Mumbai to Bangalore via New Delhi',
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Air India',
                    textDirection: TextDirection.ltr,
                    style: GoogleFonts.roboto(
                      decoration: TextDecoration.none,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'From Jaipur to Goa via New Delhi',
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    child: Image.asset(
                      'assets/aircraft.jpg',
                      width: 250.0,
                      height: 250.0,
                    ),
                  ),
                ),
              ),
              FlightBookingButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class FlightBookingButton extends StatelessWidget {
  const FlightBookingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          elevation: 6.0,
          foregroundColor: Colors.white,
        ),
        onPressed: () => bookFlight(context),
        child: Text(
          'Book Your Flight',
          style: GoogleFonts.roboto(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Flight Booked'),
      content: Text('Have a safe journey'),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog,
    );
  }
}
