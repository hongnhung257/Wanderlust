import 'package:flutter/material.dart';
import 'tips.dart';

class meo1 extends StatefulWidget {
  @override
  _meo1State createState() => new _meo1State();
}

class _meo1State extends State<meo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 110,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.teal,
              size: 30,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Vật dụng cần thiết',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
                Icon(Icons.home_repair_service_outlined,
                    size: 70.0, color: Colors.teal),
              ])),
      backgroundColor: Colors.teal,
      body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SingleChildScrollView(
            child: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    children: <TextSpan>[
                  TextSpan(
                    text:
                        "Áo khoác là một trong những vật không thể thiếu khi đi phượt, có thể là một chiếc áo khoác bằng vải dù đơn giản hoặc một chiếc áo khoác da cho đúng “chất”. Một chiếc áo khoác tốt sẽ giúp bạn giữ ấm cơ thể, cũng như cản bớt sức gió, giúp bạn ít mất sức hơn khi đi xa.",
                  ),
                  TextSpan(
                      text:
                          "\n\nTiền bạc và giấy tờ là cực kỳ quan trọng ngay cả khi đi du lịch thông thường, với “phượt” thì càng quan trọng hơn gấp bội. Ngoài những khoản tiền “cứng” bắt  buộc phải chi trả thì bạn cũng nên dự phòng kha khá, để lỡ có vấn đề gì cũng dễ xoay sở. Giấy tờ thì bạn cần chuẩn bị bằng lái xe, chứng minh thư, giấy đăng ký xe, bảo hiểm xe… Đây là những giấy tờ tùy thân nhất định phải mang theo. "),
                  TextSpan(
                      text:
                          "\n\nMặc dù như phần đầu mình đã nói, các bạn cần lên kế hoạch cho các trạm dừng nhỏ của mình. Thế nhưng không vì thế mà chủ quan, các bạn cũng cần chuẩn bị sẵn thức ăn khô và nước uống dọc đường. Phòng khi đói hoặc khát nước mà không có điểm dừng, các bạn có thể tấp vào lề đường ăn uống nhẹ để giữ sức cho chặng đường dài trước mắt. Thêm nữa, các bạn cũng cần chuẩn bị ruột xe và một số phụ tùng cần thiết cho chuyến đi của mình. Một lưu ý nhỏ nữa là nếu như các bạn bị hư xe với những hư hại nhỏ như bể bánh xe, các bạn cần chú ý lựa địa điểm sửa xe nào có thể “tin tưởng” được, bởi đôi khi chính người sửa xe là người rải đinh, dụ bạn vào tiệm để tiện tay “chặt chém”."),
                  TextSpan(
                      text:
                          "\n\nThêm nữa, các bạn cũng cần chuẩn bị ruột xe và một số phụ tùng cần thiết cho chuyến đi của mình. Một lưu ý nhỏ nữa là nếu như các bạn bị hư xe với những hư hại nhỏ như bể bánh xe, các bạn cần chú ý lựa địa điểm sửa xe nào có thể “tin tưởng” được, bởi đôi khi chính người sửa xe là người rải đinh, dụ bạn vào tiệm để tiện tay “chặt chém”.")
                ])),
          )),
    );
  }
}
