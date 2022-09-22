import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pavillion/utilities/size_manager.dart';

class CardDetails extends StatelessWidget {
  final String number;
  final String expDate;
  final String cvv;
  final String name;

  const CardDetails({
    Key? key,
    required this.number,
    required this.expDate,
    required this.cvv,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return Container(
      height: SizeMg.height(166.0),
      width: SizeMg.width(311.0),
      margin: EdgeInsets.only(
        right: SizeMg.width(16),
      ),
      padding: EdgeInsets.only(
        left: SizeMg.width(22.0),
        top: SizeMg.height(24.0),
        bottom: SizeMg.width(20.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeMg.radius(11)),
        image: const DecorationImage(
          image: AssetImage('assets/images/credit_card.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Virtual',
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: SizeMg.text(15.2),
            ),
          ),
          SizedBox(
            height: SizeMg.height(11.93),
          ),
          Text(
            number,
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: SizeMg.text(15.2),
            ),
          ),
          SizedBox(
            height: SizeMg.height(5),
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Expiry date',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: SizeMg.text(10),
                    ),
                  ),
                  Text(
                    expDate,
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: SizeMg.text(13),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: SizeMg.width(49.0),
              ),
              Column(
                children: [
                  Text(
                    'CVV',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: SizeMg.text(10),
                    ),
                  ),
                  Text(
                    cvv,
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: SizeMg.text(13),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: SizeMg.height(5),
          ),
          Text(
            name,
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: SizeMg.text(15.2),
            ),
          ),
        ],
      ),
    );
  }
}
