import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Example'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              verticalDirection: VerticalDirection.down,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  key: const Key('cardKey1'),
                  color: Colors.white, // Màu nền của Card
                  shadowColor: Colors.black, // Màu của bóng đổ
                  surfaceTintColor: Colors.red, // Màu bề mặt nền
                  elevation: 10.0, // Độ nâng của Card
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(15.0), // Hình dạng của Card
                  // ),
                  borderOnForeground: false, // Quyết định viền Card nằm trên(foreground) hay (background), tạo ra hiệu ứng về sự sâu hơn hoặc phẳng hơn.
                  margin: const EdgeInsets.all(16.0), // Viền của Card
                  clipBehavior: Clip.antiAlias,//cắt bớt nếu nội dung vượt ra khỏi ranh giới của nó
                  semanticContainer: true, // Hành vi cắt bớt của Card
                  child: Container(
                    color: Colors.white,
                    width: 200,
                    height: 50,
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: 'Barista\n', // Văn bản muốn hiển thị
                        style: TextStyle(
                          color: Colors.yellow, // Màu sắc của văn bản
                          fontSize: 20.0, // Kích thước của văn bản
                          fontWeight: FontWeight.bold, // Độ đậm của văn bản
                        ),
                        children: [
                          TextSpan(
                            text: 'Travel plans', // Văn bản muốn hiển thị
                            style: TextStyle(
                              color: Colors.black, // Màu sắc của văn bản
                              fontSize: 10.0, // Kích thước của văn bản
                            ),
                          ),
                        ],
                      ),
                    ), // Container của Card được coi là một semantic
                  ),
                ),
                Text('Default',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                Card(
                  key: const Key('cardKey2'),
                  color: Colors.white, // Màu nền của Card
                  shadowColor: Colors.black, // Màu của bóng đổ
                  surfaceTintColor: Colors.red, // Màu bề mặt nền
                  elevation: 10.0, // Độ nâng của Card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0), // Hình dạng của Card
                  ),
                  borderOnForeground: false,  // Quyết định viền Card nằm trên(foreground) hay (background), tạo ra hiệu ứng về sự sâu hơn hoặc phẳng hơn.
                    margin: const EdgeInsets.all(16.0), // Viền của Card
                    clipBehavior: Clip.antiAlias,//cắt bớt nếu nội dung vượt ra khỏi ranh giới của nó
                    semanticContainer: true, // Hành vi cắt bớt của Card
                    child: Container(
                      color: Colors.white,
                      width: 200,
                      height: 50,
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: 'Barista\n', // Văn bản muốn hiển thị
                          style: TextStyle(
                            color: Colors.yellow, // Màu sắc của văn bản
                            fontSize: 20.0, // Kích thước của văn bản
                            fontWeight: FontWeight.bold, // Độ đậm của văn bản
                          ),
                          children: [
                            TextSpan(
                                text: 'Travel plans', // Văn bản muốn hiển thị
                                style: TextStyle(
                                  color: Colors.black, // Màu sắc của văn bản
                                  fontSize: 10.0, // Kích thước của văn bản
                                )
                            ),
                          ],
                        ),
                      ), // Container của Card được coi là một semantic
                    ),
                  ),
                  Text('StadiumBorder',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  Card(
                    key: const Key('CardKey3'),
                    color: Colors.white38, // Màu nền của Card
                    shadowColor: Colors.black, // Màu của bóng đổ
                    surfaceTintColor: Colors.red, // Màu bề mặt nền
                    elevation: 10.0, // Độ nâng của Card
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15.0), // Hình dạng của Card
                    // ),
                    borderOnForeground: false, // Quyết định viền Card nằm trên(foreground) hay (background), tạo ra hiệu ứng về sự sâu hơn hoặc phẳng hơn.
                    margin: const EdgeInsets.all(16.0), // Viền của Card
                    clipBehavior: Clip.antiAlias,//cắt bớt nếu nội dung vượt ra khỏi ranh giới của nó
                    semanticContainer: true, // Hành vi cắt bớt của Card
                    child: Container(
                      color: Colors.white,
                      width: 200,
                      height: 50,
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: 'Barista\n', // Văn bản muốn hiển thị
                          style: TextStyle(
                            color: Colors.yellow, // Màu sắc của văn bản
                            fontSize: 20.0, // Kích thước của văn bản
                            fontWeight: FontWeight.bold, // Độ đậm của văn bản
                          ),
                          children: [
                            TextSpan(
                                text: 'Travel plans', // Văn bản muốn hiển thị
                                style: TextStyle(
                                  color: Colors.black, // Màu sắc của văn bản
                                  fontSize: 10.0, // Kích thước của văn bản
                                )
                            ),
                          ],
                        ),
                      ), // Container của Card được coi là một semantic
                    ),
                  ),
                  Text('UnderlineInputBorder',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  Card(
                    key: const Key('CardKey4'),
                    color: Colors.white, // Màu nền của Card
                    shadowColor: Colors.black, // Màu của bóng đổ
                    surfaceTintColor: Colors.red, // Màu bề mặt nền
                    elevation: 10.0, // Độ nâng của Card
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15.0), // Hình dạng của Card
                    // ),
                    borderOnForeground: false, // Quyết định viền Card nằm trên(foreground) hay (background), tạo ra hiệu ứng về sự sâu hơn hoặc phẳng hơn.
                    margin: const EdgeInsets.all(16.0), // Viền của Card
                    clipBehavior: Clip.antiAlias,//cắt bớt nếu nội dung vượt ra khỏi ranh giới của nó
                    semanticContainer: true, // Hành vi cắt bớt của Card
                    child: Container(
                      color: Colors.white,
                      width: 200,
                      height: 50,
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: 'Barista\n', // Văn bản muốn hiển thị
                          style: TextStyle(
                            color: Colors.yellow, // Màu sắc của văn bản
                            fontSize: 20.0, // Kích thước của văn bản
                            fontWeight: FontWeight.bold, // Độ đậm của văn bản
                          ),
                          children: [
                            TextSpan(
                                text: 'Travel plans', // Văn bản muốn hiển thị
                                style: TextStyle(
                                  color: Colors.black, // Màu sắc của văn bản
                                  fontSize: 10.0, // Kích thước của văn bản
                                )
                            ),
                          ],
                        ),
                      ), // Container của Card được coi là một semantic
                    ),
                  ),
                  Text('OutlineInputBorder',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              ],
             ),
          ),
          ),
    );
  }
}
