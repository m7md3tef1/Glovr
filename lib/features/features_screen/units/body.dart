part of '../view.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  List images = [
    AppImages.environment2,
    AppImages.environment,
    AppImages.environment1,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 0.65.sh,
        child: Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
            color: ColorManager.greyColor,

          ),
          child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(images[index]),
              ),),
        ));
  }
}
