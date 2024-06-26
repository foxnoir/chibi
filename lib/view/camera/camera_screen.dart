import 'package:chibi/global_widgets/gradient_btn.dart';
import 'package:chibi/core/theme/colours.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  List photoArr = [
    {
      'time': '2 June',
      'photo': [
        'assets/image/pp_1.png',
        'assets/image/pp_2.png',
        'assets/image/pp_3.png',
        'assets/image/pp_4.png',
      ]
    },
    {
      'time': '5 May',
      'photo': [
        'assets/image/pp_5.png',
        'assets/image/pp_6.png',
        'assets/image/pp_7.png',
        'assets/image/pp_8.png',
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        centerTitle: true,
        elevation: 0,
        leadingWidth: 0,
        leading: const SizedBox(),
        title: const Text(
          'Progress Photo',
          style: TextStyle(
              color: Colours.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colours.lightgray,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                'assets/icon/more_icon.png',
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      backgroundColor: theme.colorScheme.surface,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFE5E5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: theme.colorScheme.surface,
                              borderRadius: BorderRadius.circular(30)),
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/icon/date_notifi.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Reminder!',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Next Photos Fall On July 08',
                                  style: TextStyle(
                                      color: Colours.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ]),
                        ),
                        Container(
                            height: 60,
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.close,
                                  color: Colours.gray,
                                  size: 15,
                                )))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(20),
                    height: media.width * 0.4,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colours.lightBlue.withOpacity(0.4),
                          theme.colorScheme.tertiary.withOpacity(0.4)
                        ]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Track Your Progress Each\nMonth With Photo',
                                style: TextStyle(
                                  color: Colours.black,
                                  fontSize: 12,
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 110,
                                height: 35,
                                child: GradientBtn(
                                    title: 'Learn More', onPressed: () {}),
                              )
                            ]),
                        Image.asset(
                          'assets/image/progress_each_photo.png',
                          width: media.width * 0.35,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colours.lightBlue.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Compare my Photo',
                        style: TextStyle(
                            color: Colours.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 100,
                        height: 25,
                        child: GradientBtn(
                          title: 'Compare',
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //     const ComparisonView(),
                            //   ),
                            // );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Gallery',
                        style: TextStyle(
                            color: Colours.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See more',
                            style: TextStyle(color: Colours.gray, fontSize: 12),
                          ))
                    ],
                  ),
                ),
                ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: photoArr.length,
                    itemBuilder: ((context, index) {
                      var pObj = photoArr[index] as Map? ?? {};
                      var imaArr = pObj['photo'] as List? ?? [];

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              pObj['time'].toString(),
                              style: const TextStyle(
                                  color: Colours.gray, fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.zero,
                              itemCount: imaArr.length,
                              itemBuilder: ((context, indexRow) {
                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colours.lightgray,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      imaArr[indexRow] as String? ?? '',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      );
                    }))
              ],
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => SleepAddAlarmView(
          //       date: _selectedDateAppBBar,
          //     ),
          //   ),
          // );
        },
        child: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: Colours.secondaryG),
              borderRadius: BorderRadius.circular(27.5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 5, offset: Offset(0, 2))
              ]),
          alignment: Alignment.center,
          child: Icon(
            Icons.photo_camera,
            size: 20,
            color: theme.colorScheme.surface,
          ),
        ),
      ),
    );
  }
}
