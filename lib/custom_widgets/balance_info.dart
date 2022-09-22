import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pavillion/utilities/size_manager.dart';

class BalanceInfo extends StatelessWidget {
  final String topic;
  final String iconImage;

  const BalanceInfo({Key? key, required this.topic, required this.iconImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeMg.width(160.0),
      padding: EdgeInsets.symmetric(
        vertical: SizeMg.height(8.0),
        horizontal: SizeMg.width(8.0),
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF5243D2),
        borderRadius: BorderRadius.circular(
          SizeMg.radius(8.0),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ImageIcon(
            AssetImage('assets/images/$iconImage'),
            size: 24.0,
            color: Colors.white,
          ),
          SizedBox(
            width: SizeMg.width(5.0),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic,
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeMg.text(13.0),
                      color: Colors.white),
                ),
                RichText(
                  text: TextSpan(
                    text: '\u{20A6}',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: SizeMg.text(10.0),
                        color: const Color(0xFFD8D6D6),
                      ),
                    children: [
                      TextSpan(
                        text: ' 2,342 . 00',
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeMg.text(10.0),
                          color: const Color(0xFFD8D6D6),
                        ),
                      ),
                    ]
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            FontAwesomeIcons.eyeSlash,
            color: Color(0xFFD8D6D6),
            size: 10.0,
          ),
        ],
      ),
    );
  }
}
