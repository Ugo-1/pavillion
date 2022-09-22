import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pavillion/utilities/size_manager.dart';

class Transaction extends StatelessWidget {
  final bool profit;
  final String name;
  final String date;
  final String time;
  final String points;

  const Transaction({
    Key? key,
    required this.profit,
    required this.name,
    required this.date,
    required this.time,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return Padding(
      padding: EdgeInsets.only(bottom: SizeMg.height(16.0),),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: (profit)
                      ? const Color(0xFF8DD7A8)
                      : const Color(0xFFE592A5),
                  child: Icon(
                    CupertinoIcons.gift,
                    color: (profit)
                        ? const Color(0xFF1D964A)
                        : const Color(0xFFE4325A),
                  ),
                ),
                SizedBox(
                  width: SizeMg.width(4.0),
                ),
                Text(
                  name,
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF0D073C),
                    fontSize: SizeMg.text(12),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              date,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(5, 4, 11, 0.5),
                fontSize: SizeMg.text(10),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              time,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w700,
                color: const Color(0xFF828185),
                fontSize: SizeMg.text(10),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              '${points}points',
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w700,
                color:
                    (profit) ? const Color(0xFF1D964A) : const Color(0xFFE4325A),
                fontSize: SizeMg.text(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
