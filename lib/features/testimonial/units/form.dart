part of '../view.dart';

class form extends StatelessWidget {
  form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: ColorManager.greyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomText(
          fontSize: 20.sp,
          color: const Color(0xFF707070),
          wordSpacing: .8,
          letterSpacing: .5,
          text:
              'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta voluptatem saepe, velit iure tempora sequi reprehenderit perferendis perspiciatis numquam aliquid animi, temporibus sit magnam ut molestiae esse veniam illo fugit cupiditate aliquam, ad voluptatibus deleniti ex et? Amet consequuntur voluptas voluptatibus et soluta quaerat veritatis quasi! Aliquam dolores tempora, fuga corrupti quas dolor obcaecati esse eveniet maiores. Accusamus voluptate consequatur adipisci dicta sunt nobis dolores repellat corporis, sed excepturi, provident, quam cum sit totam labore ipsam? Dolores, voluptatibus distinctio quasi molestias quam dolor consequatur molestiae rem, culpa blanditiis recusandae voluptates! Odit quos eaque deserunt, praesentium accusantium facilis incidunt laudantium quia molestiae mollitia eos, ea, iusto itaque voluptate quae modi maiores. Molestiae, quidem. Culpa quo ullam molestiae maxime, ipsum, est doloribus unde possimus natus impedit ducimus dignissimos sequi, nam earum non fuga totam nostrum? Temporibus laboriosam aspernatur nulla, quod ullam ipsa! Amet explicabo sed atque expedita rerum distinctio, quo sunt velit architecto deserunt nulla nihil nesciunt, reiciendis eveniet quidem molestias, consectetur voluptatem consequatur repudiandae. Incidunt quasi, ad blanditiis non consequatur delectus numquam debitis consectetur fuga velit labore adipisci esse aliquid commodi suscipit dolore laborum? Facilis tenetur, iusto id fugit cum sed. Aperiam natus ipsam veniam voluptate reiciendis eius saepe aliquid eaque',
        ),
      ),
    );
  }
}
