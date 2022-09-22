import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pavillion/custom_widgets/balance_info.dart';
import 'package:pavillion/custom_widgets/card_widget.dart';
import 'package:pavillion/custom_widgets/transaction_row.dart';
import 'package:pavillion/utilities/size_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeMg.init(context);
    return Scaffold(
        body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: SizeMg.width(24.0),
              right: SizeMg.width(24.0),
              top: SizeMg.height(20.0),
              bottom: SizeMg.height(30.0),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  SizeMg.radius(24.0),
                ),
                bottomRight: Radius.circular(
                  SizeMg.radius(24.0),
                ),
              ),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      foregroundImage: const AssetImage('assets/images/avatar.png'),
                      backgroundColor: Colors.transparent,
                      radius: SizeMg.radius(24.0),
                    ),
                    SizedBox(
                      width: SizeMg.width(8.0),
                    ),
                    Text(
                      'Hi Janet,',
                      style: GoogleFonts.manrope(
                        fontSize: SizeMg.text(20.0),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search_rounded,
                    ),
                    SizedBox(
                      width: SizeMg.width(6.0),
                    ),
                    const Icon(
                      Icons.help_outline_rounded,
                    ),
                    SizedBox(
                      width: SizeMg.width(6.0),
                    ),
                    const Icon(
                      Icons.notifications_none_rounded,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeMg.height(40.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    BalanceInfo(topic: 'Wallet Balance', iconImage: 'wallet.png'),
                    BalanceInfo(
                        topic: 'Reward Balance', iconImage: 'rewards.png'),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: SizeMg.width(24.0),
                      vertical: SizeMg.height(25.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeMg.width(8.0),
                      vertical: SizeMg.height(8.0),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        SizeMg.radius(5.0),
                      ),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF5143D2),
                          Color(0XFF491B84),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Congratulations!!',
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: SizeMg.text(15.0),
                              ),
                            ),
                            SizedBox(
                              height: SizeMg.height(3.0),
                            ),
                            RichText(
                              text: TextSpan(
                                text:
                                'You’ve completed all your tasks for the week and you won ',
                                style: GoogleFonts.manrope(
                                  fontSize: SizeMg.text(7.0),
                                  color: Colors.white,
                                ),
                                children: [
                                  TextSpan(
                                    text: '150 points.',
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w700,
                                      fontSize: SizeMg.text(7.0),
                                      color: const Color(0xFFF18701),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeMg.height(10.0),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeMg.width(25.0),
                                vertical: SizeMg.height(5.0),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    SizeMg.radius(6.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(
                                        0,
                                        1.05,
                                      ),
                                      blurRadius: SizeMg.radius(1.05),
                                    ),
                                  ]),
                              child: Text(
                                'Redeem Now!',
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeMg.text(10.0),
                                  color: const Color(0xFF3D348B),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/chest.png',
                          height: SizeMg.height(70),
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeMg.height(166.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                        left: SizeMg.width(24),
                      ),
                      physics: const BouncingScrollPhysics(),
                      children: const [
                        CardDetails(
                          number: '1234 5678 9012 3456',
                          expDate: '12/30',
                          cvv: '123',
                          name: 'Janet M Doe',
                        ),
                        CardDetails(
                          number: '0987 6543 2109 8765',
                          expDate: '11/32',
                          cvv: '123',
                          name: 'Chris A James',
                        ),
                        CardDetails(
                          number: '2345 7362 5783 5736',
                          expDate: '01/34',
                          cvv: '154',
                          name: 'James St Patrick',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: SizeMg.width(24.0), right: SizeMg.width(24.0),
                      top: SizeMg.height(25.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: SizeMg.width(8.0),
                      vertical: SizeMg.height(8.0),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(SizeMg.radius(8.0),),
                        topRight: Radius.circular(SizeMg.radius(8.0),),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Transaction History',
                              style: GoogleFonts.manrope(
                                fontSize: SizeMg.text(16),
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF0D073C),
                              ),
                            ),
                            DropdownButton(
                              iconDisabledColor: Colors.black,
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    'This Month',
                                    style: GoogleFonts.manrope(
                                      fontSize: SizeMg.text(10),
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF0D073C),
                                    ),
                                  ),
                                ),
                              ],
                              onChanged: null,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeMg.height(10.0),
                        ),
                        Material(
                          elevation: 1.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    'Name',
                                    style: GoogleFonts.manrope(
                                      color: const Color.fromRGBO(61, 52, 139, 0.6),
                                      fontWeight: FontWeight.w700,
                                      fontSize: SizeMg.text(14),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    'Date',
                                    style: GoogleFonts.manrope(
                                      color: const Color.fromRGBO(61, 52, 139, 0.6),
                                      fontWeight: FontWeight.w700,
                                      fontSize: SizeMg.text(14),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Time',
                                    style: GoogleFonts.manrope(
                                      color: const Color.fromRGBO(61, 52, 139, 0.6),
                                      fontWeight: FontWeight.w700,
                                      fontSize: SizeMg.text(14),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    'Points',
                                    style: GoogleFonts.manrope(
                                      color: const Color.fromRGBO(61, 52, 139, 0.6),
                                      fontWeight: FontWeight.w700,
                                      fontSize: SizeMg.text(14),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeMg.height(20.0),
                        ),
                        ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const [
                            Transaction(profit: true,
                                name: 'SuperMart', date: '12/06/2022',
                                time: '12:06', points: '+50'),
                            Transaction(profit: false,
                                name: 'SuperMart', date: '16/06/2022',
                                time: '15:06', points: '-30'),
                            Transaction(profit: true,
                                name: 'SuperMart', date: '12/06/2022',
                                time: '12:06', points: '+50'),
                            Transaction(profit: false,
                                name: 'SuperMart', date: '16/06/2022',
                                time: '15:06', points: '-30'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
