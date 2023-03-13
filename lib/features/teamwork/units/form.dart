part of '../view.dart';

class form extends StatelessWidget {
  form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.65.sh,
      child: Container(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, bottom: 8, top: 8),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: ColorManager.greyColor,
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 35.r,
                          backgroundImage: const AssetImage(
                            'assets/images/glovvr.jpg',
                          ),
                        ),
                        title: Text(
                          ' Jack Milton',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing:  Column(
                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 1.h,),
                            const Expanded(
                                child: Icon(
                              LineIcons.twitter,
                              size: 20,
                              color: Color(0xFF00AAEC),
                            )),
                            SizedBox(height: 10.h,),
                            const Expanded(
                              child: Icon(LineIcons.facebookF,
                                  size: 20, color: Color(0xFF00AAEC)),
                            ),
                            SizedBox(height: 9.h,),
                            const Expanded(
                                child: Icon(LineIcons.linkedinIn,
                                    size: 20, color: Color(0xFF00AAEC))),
                            SizedBox(height: 1.h,),
                          ],
                        ),
                        subtitle: Text(
                          ' Simple Short Description',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ))),
    );
  }
}
