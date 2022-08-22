import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAlias,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: Colors.transparent,
      elevation: 10,
      child: Container(
        height: 50.0.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0.r),
            topRight: Radius.circular(25.0.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50.0.h,
              width: MediaQuery.of(context).size.width / 2 - 40.0.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.home,
                    color: Color(0xFFEF7532),
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xFF676E79),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50.0.h,
              width: MediaQuery.of(context).size.width / 2 - 40.0.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.shopping_basket_outlined,
                    color: Color(0xFF676E79),
                  ),
                  Icon(
                    Icons.person_outline,
                    color: Color(0xFF676E79),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
