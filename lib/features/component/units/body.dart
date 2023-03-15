part of '../view.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 0.72.sh,
        width: .95.sw,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.white24,
            ),
            child: GridView.builder(
              itemCount: 6,
              physics: const BouncingScrollPhysics(),
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: .95.r),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  //height: 50.h,
                  width: .8.sw,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              height: 90,
                              width: 1.sw,
                              fit: BoxFit.fitWidth,
                              image: const AssetImage(
                                  'assets/images/component.jpg')),
                          SizedBox(
                            height: 5.h,
                          ),
                          CustomText(
                            text: 'Test Title',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF2D2A2A),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 6.0,left: 15),
                              child: Text(
                                textAlign: TextAlign.left,
                                'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Lorem ipsum dolor sit amet consectetur.',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  wordSpacing: .1,
                                  letterSpacing: .4,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF707070),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )));
  }
}
