part of '../view.dart';

class OnDrawer extends StatelessWidget {
  const OnDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: const [Icon(Icons.menu, size: 27)],
                  ),
                ),
              ),
            ),
            CustomRowDrawer(
              text: 'Stats',
              image: AppImages.stats,
              // navigatename: const Home(),
            ),
            CustomRowDrawer(
              text: 'Events',
              image: AppImages.event,
              //     navigatename: const UploadedLoadsView(),
            ),
            CustomRowDrawer(
              text: 'Service',
              image: AppImages.service,
              //     navigatename: const UploadProductsView(),
            ),
            CustomRowDrawer(
              text: 'Our Skills',
              image: AppImages.skill,
              //   navigatename: const UploadJobsView(),
            ),
            CustomRowDrawer(
              text: 'Testimonials',
              image: AppImages.testimonial,
               navigatename:  TestimonialView(),
            ),
            CustomRowDrawer(
              text: 'Pricing Plans',
              image: AppImages.plan,
              //   navigatename: const UploadAdvertismentsView(),
            ),
            CustomRowDrawer(
              text: 'Team Members',
              image: AppImages.team,
              //    navigatename: const BlogsView(),
            ),
            CustomRowDrawer(
              text: 'Request A Discount',
              image: AppImages.request,
              //  navigatename: PackagesView(),
            ),
          ],
        ),
      ),
    );
  }
}
