part of '../view.dart';

class _BottomBar extends StatelessWidget {
  const _BottomBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (_, s) {},
      builder: (context, state) => BottomNavigationBar(
        currentIndex: HomeCubit.get(context).currentIndex,
        onTap: (i) {
          HomeCubit.get(context).changeBottom(i, context);
        },
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.sp),
        unselectedLabelStyle: TextStyle(
            color: Colors.grey, fontSize: 13.sp, fontWeight: FontWeight.w400),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: buildColumn(context, 0, AppImages.feature),
            label: buildText(context, 0, 'Components'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: buildColumn(context, 1, AppImages.component),
            label: buildText(context, 1, 'Features'),
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: buildColumn(context, 2, null),
              label: ''),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: buildColumn(context, 3, AppImages.gallery),
            label: buildText(context, 3, 'Gallery'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: buildColumn(context, 4, AppImages.howIt),
            label: buildText(context, 4, 'How it work'),
          ),
        ],
      ),
    );
  }

  Column buildColumn(BuildContext context, index, icon) {
    return Column(
      children: [
        icon == null
            ? Stack(
                children: const [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        AppImages.logo,
                      ),
                    ),
                  ),
                ],
              )
            : SvgPicture.asset(
                icon,
                height: 28,
                width: 28,
                color: HomeCubit.get(context).currentIndex == index
                    ? Colors.black
                    : ColorManager.darkGrey,
              )
      ],
    );
  }

  String buildText(BuildContext context, index, text) {
    return HomeCubit.get(context).currentIndex == index ? text : '';
  }
}
