part of '../view.dart';

class form extends StatelessWidget {
  form({Key? key}) : super(key: key);
List name=['HTML','CSS','Python','JavaScript'];
  List per=[.85,.80,.90,.75];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: .9.sh,
        child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 20.0, right: 20,bottom:30 ),
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder:(context,index)=> Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Column(
                  children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '    ${name[index]}',
                          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                         Text(
                          "${per[index]*100}%    ",
                          style:const TextStyle(fontSize: 18.0, color: Color(0xFF1991BF)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: LinearPercentIndicator(
                        width: .89.sw,
                        lineHeight: .04.sh,
                        percent: per[index],
                        barRadius:Radius.circular(11.r),
                        //  trailing: Icon(Icons.mood),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: const Color(0xFFD9D9D9),
                        progressColor: const Color(0xFF00AAEC),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
