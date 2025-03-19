import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var items = [
      {"id": 1, "content": "hello, flutter", "title": "title1"},
      {"id": 2, "content": "Hello, Dart", "title": "title2"},
      {"id": 3, "content": "Hello, Python", "title": "title3"},
      {"id": 4, "content": "Hello, C", "title": "title4"},
      {"id": 5, "content": "Hello, Java", "title": "title5"},
      {"id": 6, "content": "Hello, Kotlin", "title": "title6"},
      {"id": 7, "content": "Hello, Swift", "title": "title7"},
    ];

    return Scaffold(
      appBar: AppBar(title: Text('首页')),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0), // 设置右上角的圆角
            bottomRight: Radius.circular(20.0), // 设置右下角的圆角
          ),
        ),
        child: ListView(children: [Text("你好")]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 150.h,
              child: Swiper(
                indicatorLayout: PageIndicatorLayout.COLOR,
                autoplay: true,
                itemCount: 3,
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
                itemBuilder: (context, index) {
                  return Container(
                    color:
                        index == 0
                            ? Colors.red
                            : index == 1
                            ? Colors.blue
                            : Colors.green,
                    child: Image.network(
                      "https://files.codelife.cc/wallhaven/full/w8/wallhaven-w82qyx.jpg?x-oss-process=image/resize,limit_0,m_fill,w_2560,h_1440/quality,Q_93/format,webp",
                    ),
                  );
                },
              ),
            ),
            // 用 Expanded 包裹 ListView, 让 ListView 占满剩余空间
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4.r),
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.r),
                                child: Image.network(
                                  "https://www.bing.com/th?id=OIP._J_zkeC5KSf8SlJqk5ssowHaHX&w=173&h=185&c=8&rs=1&qlt=90&o=6&dpr=2&pid=3.1&rm=2",
                                  width: 40.r,
                                  height: 40.r,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 5.r),
                                child: Text("公开"),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.w,
                                  vertical: 2.h,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                                child: Text(
                                  "置顶",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          width: double.infinity,
                          child: Text(
                            "我是一个标题我是一个标题我是一个标题我是一个标题我是一个标题我是一个标题",
                            style: TextStyle(
                              fontSize: 15.r,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.only(right: 5.r),
                            child: Text(
                              "2024-03-20 12:00:00",
                              style: TextStyle(color: Colors.blueGrey),
                            ),
                          ),
                        ),

                        Divider(height: 1.h, color: Colors.grey),
                      ],
                    ),
                  );
                },
                itemCount: items.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}