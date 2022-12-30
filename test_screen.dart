import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  var appBar =  AppBar(
      backgroundColor: Colors.white,
      centerTitle: false,
      automaticallyImplyLeading: false,
      elevation: 0,
      toolbarHeight: 80,
      title: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Hans 👋", style: TextStyle(color: Colors.black, fontFamily: 'ceraBold', fontSize: 30.sp),),
                IconButton(onPressed: (){
                }, icon: Icon(Icons.search, color: Colors.black, size: 40.sp,))
              ],
            ),
            Text("It's lunch time!", style: TextStyle(color: Colors.black, fontFamily: 'ceraLight', fontSize: 17.sp),),

          ],
        ),
      )
  );


  @override
  Widget build(BuildContext context) {
    double paddingH = 30.w;
    double paddingV = 20.h;
    print(1.sw);
    print(1.sh);
    double appBarHeight = appBar.preferredSize.height;
    double statusBarHeight = ScreenUtil().statusBarHeight;
    double paddingTop = MediaQuery.of(context).padding.top;
    double bodyHeight = 1.sh - appBarHeight - ScreenUtil().statusBarHeight;
    print(appBarHeight);
    print(statusBarHeight);
    print(paddingTop);
    print(bodyHeight);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: paddingH, vertical: 20),
            child: Column(
              children: [
                Container(
                  height: (1.sh < 932) ? bodyHeight - 40 : 460.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(15.r))
                  ),
                ),
                SizedBox(height: 10.h,),
               Container(
                 child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Text("Some text", style: TextStyle(color: Colors.black, fontFamily: 'ceraBold', fontSize: 25.sp),),
                       ],
                     ),
                     Container(
                       width: 1.sw,
                       height: 50.h,
                       child: ListView(
                         scrollDirection: Axis.horizontal,
                         children: [
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 5.w),
                             width: 50.w,
                             height: 50.h,
                             decoration: BoxDecoration(
                                 color: Colors.blueAccent.withOpacity(0.4),
                                 borderRadius: BorderRadius.all(Radius.circular(10.r))
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 5.w),
                             width: 50.w,
                             height: 50.h,
                             decoration: BoxDecoration(
                                 color: Colors.blueAccent.withOpacity(0.4),
                                 borderRadius: BorderRadius.all(Radius.circular(10.r))
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 5.w),
                             width: 50.w,
                             height: 50.h,
                             decoration: BoxDecoration(
                                 color: Colors.blueAccent.withOpacity(0.4),
                                 borderRadius: BorderRadius.all(Radius.circular(10.r))
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 5.w),
                             width: 50.w,
                             height: 50.h,
                             decoration: BoxDecoration(
                                 color: Colors.blueAccent.withOpacity(0.4),
                                 borderRadius: BorderRadius.all(Radius.circular(10.r))
                             ),
                           ),
                         ],
                       ),
                     )
                     /*ElevatedButton(
                      onPressed: (){

                      },
                      child: Text("Button", style: TextStyle(color: Colors.black, fontFamily: 'ceraBold', fontSize: 15.sp),),
                    )*/
                   ],
                 ),
               )
              ],
            )
          ),
        ),
      ),
    );
  }
}
