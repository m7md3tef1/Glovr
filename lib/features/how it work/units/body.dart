part of '../view.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  List head = ['Architecture', 'Business Analysis', 'Developement', 'Design'];
  List hint = [
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta voluptatem saepe, velit iure tempora',
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta voluptatem saepe, velit iure tempora',
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta voluptatem saepe, velit iure tempora',
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta voluptatem saepe, velit iure tempora',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 0.65.sh,
        child: Container(
            child: ListView.builder(
          itemCount: head.length,
          itemBuilder: (context, index) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      '${index + 1}:',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      ' ${head[index]}',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21.0, right: 21),
                child: Text(
                  ' ${hint[index]}',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    wordSpacing: .2,
                    letterSpacing: .2,
                    color: Colors.grey[800],
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
