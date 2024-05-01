import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pemprograman_mobile/common/app_page_router.dart';
import 'package:pemprograman_mobile/models/tugas_model.dart';

class ItemRow extends StatelessWidget {
  final TugasModel tugas;

  const ItemRow({super.key, required this.tugas});

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(const AppPageRouter().toCupertino(tugas.tugasPage)),
      child: Container(
        clipBehavior: Clip.antiAlias,
        // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 140.h,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: const BorderRadius.all(Radius.circular(7))),
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.black),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          tugas.imageAsset ?? 'assets/images/assignment.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),  
                      Container(
                        color: const Color(0x0000008b).withAlpha(170),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tugas.judul,
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.sp),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              tugas.desc,
                              style: TextStyle(color: Colors.white70, fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 35.h,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 10, right: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.date_range, color: Colors.blue[800]),
                        const SizedBox(width: 5),
                        Text(
                          tugas.tanggal.toString(),
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.blue[500],
                      size: 28.sp,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
