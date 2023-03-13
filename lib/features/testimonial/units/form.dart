part of '../view.dart';

class form extends StatelessWidget {
  form({Key? key}) : super(key: key);
  // Padding(
  // padding: EdgeInsets.all(15.0),
  // child: new LinearPercentIndicator(
  // width: 140.0,
  // lineHeight: 14.0,
  // percent: 0.5,
  // center: Text(
  // "50.0%",
  // style: new TextStyle(fontSize: 12.0),
  // ),
  // trailing: Icon(Icons.mood),
  // linearStrokeCap: LinearStrokeCap.roundAll,
  // backgroundColor: Colors.grey,
  // progressColor: Colors.blue,
  // ),
  // ),
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 20.0, right: 20),
        child: Container(
          height: 1.sh,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: ColorManager.whiteColor,
          ),
          child: Text(
              style: TextStyle(
                fontSize: 20.sp,
                color: const Color(0xFF707070),
                fontWeight: FontWeight.w500,
                // wordSpacing: .8,
                // letterSpacing: .5,
              ),
              'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta voluptatem saepe, velit iure tempora sequi reprehenderit perferendis perspiciatis numquam aliquid animi, temporibus sit magnam ut molestiae esse veniam illo fugit cupiditate aliquam, ad voluptatibus deleniti ex et? Amet consequuntur voluptas voluptatibus et soluta quaerat veritatis quasi! Aliquam dolores tempora, fuga corrupti quas dolor obcaecati esse eveniet maiores. Accusamus voluptate consequatur adipisci dicta sunt nobis dolores repellat corporis, sed excepturi, provident, quam cum sit totam labore ipsam? Dolores, voluptatibus distinctio quasi molestias quam dolor consequatur molestiae rem, culpa blanditiis recusandae voluptates! Odit quos eaque deserunt, praesentium accusantium facilis incidunt laudantium quia molestiae mollitia eos, ea, iusto itaque voluptate quae modi maiores. Molestiae, quidem. Culpa quo ullam molestiae maxime, ipsum, est doloribus unde possimus natus impedit ducimus dignissimos sequi, nam earum non fuga totam nostrum? Temporibus laboriosam aspernatur nulla, quod ullam ipsa! Amet explicabo sed atque expedita rerum distinctio, quo sunt velit architecto deserunt nulla nihil nesciunt, reiciendis eveniet quidem molestias, consectetur voluptatem consequatur repudiandae. Incidunt quasi, ad blanditiis non consequatur delectus numquam debitis consectetur fuga velit labore adipisci esse aliquid commodi suscipit dolore laborum? Facilis tenetur, iusto id fugit cum sed. Aperiam natus ipsam veniam voluptate reiciendis eius saepe aliquid eaque'),
        ),
      ),
    );
  }
}
