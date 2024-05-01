import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cover extends StatelessWidget {
  const Cover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      // height: 1.sh,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Pemrograman Mobile\nKH201 7174',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.sp, color: Colors.blue[600], fontWeight: FontWeight.w600),
          ),
          Image.asset('assets/images/esaunggul.png'),
          const SizedBox(height: 10),
          Text(
            'Marzuki Ahmad Syarif\n(20200801352)',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
