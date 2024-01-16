import 'package:flutter/material.dart';
import 'package:grow_calc/Calc/Sipcalc.dart';
import 'package:grow_calc/Calc/emicalc.dart';
import 'package:grow_calc/Calc/fdcalc.dart';
import 'package:grow_calc/Calc/npscalc.dart';

class about_calc extends StatefulWidget {
  final String str;
  about_calc(this.str);
  @override
  State<about_calc> createState() => _about_calcState();
}

class _about_calcState extends State<about_calc> {
  bool about = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 340,
        height: 700,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-5, -5),
              blurRadius: 15,
            ),
            BoxShadow(
              color: Colors.grey.shade700,
              offset: const Offset(5, 5),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      about = !about;
                    });
                  },
                  child: Container(
                    width: 170,
                    height: 50,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      border: Border.all(
                          color: (about)
                              ? Colors.grey.shade600
                              : Colors.grey.shade300),
                    ),
                    child: Center(
                        child: Text(
                      'About',
                      style: TextStyle(
                          fontSize: (about) ? 20 : 15,
                          fontWeight:
                              (about) ? FontWeight.w700 : FontWeight.normal),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      about = !about;
                    });
                  },
                  child: Container(
                    width: 170,
                    height: 50,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      border: Border.all(
                          color: !(about)
                              ? Colors.grey.shade600
                              : Colors.grey.shade300),
                    ),
                    child: Center(
                        child: Text(
                      'Calculator',
                      style: TextStyle(
                          fontSize: !(about) ? 20 : 15,
                          fontWeight:
                              !(about) ? FontWeight.w700 : FontWeight.normal),
                    )),
                  ),
                ),
              ],
            ),
            (about)
                ? const SizedBox(
                    height: 100,
                  )
                : const Text(''),
            (about)
                ? Text(
                    'What is ${widget.str} Calculator ? ',
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w700),
                  )
                : const Text(''),
            (about)
                ? Padding(
                    padding: const EdgeInsets.all(25),
                    child: (widget.str == 'SIP')
                        ? const Text(
                            ' A SIP calculator is a tool that helps you determine the returns you can avail when parking your funds in such investment tools. \n\nSystematic Investment Plan or SIP is a process of investing a fixed sum of money in mutual funds at regular intervals. \n\nSIPs usually allow you to invest weekly, quarterly, or monthly. ',
                            style: TextStyle(fontWeight: FontWeight.w500),
                            textAlign: TextAlign.justify,
                          )
                        : (widget.str == 'FD')
                            ? const Text(
                                'A fixed deposit is a type of term investment offered by several banks and NBFCs. These deposits typically offer a higher rate of interest, subject to certain terms and conditions. \n\nThe amount you deposit in these deposits is locked for a predetermined period which can vary between 7 days and 10 years An FD calculator can be used to determine the interest and the amount that it will accrue at the time of maturity. \n\nIt is a simple-to-use tool available on the Groww website',
                                style: TextStyle(fontWeight: FontWeight.w500),
                                textAlign: TextAlign.justify,
                              )
                            : (widget.str == 'NPS')
                                ? const Text(
                                    'The National Pension System or NPS is a measure to introduce a degree of financial stability for Indian citizens after they have retired. \n\nIt was previously known as the National Pension Scheme. Anyone over the age of 60 is eligible to use the amount gathered in the pension corpus. \n\nYou will need an NPS calculator to determine how much the total accumulation amounts to.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.justify,
                                  )
                                : const Text(
                                    'The credit market in India is steadily on the rise. It is currently the 4th largest credit industry in the world, recording a CAGR of over 11% year on year. \n\nA vast majority of these advances are short-term credits such as personal loans and credit cards. Combined, these two financial products account for 78% of all credit lending in India.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.justify,
                                  ),
                  )
                : const Text(''),
            (!about)
                ? Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: (widget.str == 'SIP')
                        ? SIPCALC()
                        : (widget.str == 'FD')
                            ? FDCalc()
                            : (widget.str == 'NPS')
                                ? Npscalc()
                                : EMIcalc())
                : const Text('')
          ],
        ),
      ),
    );
  }
}

// class check{
//   Widget build(BuildContext context){
//     return 
//   }
// }
