import 'package:chris_website/ui/common/app_colors.dart';
import 'package:chris_website/ui/common/shared_styles.dart';
import 'package:chris_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StaggeredGrid.count(
          crossAxisCount: 16,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 16,
                mainAxisCellCount: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                    child: Text(
                      "25Chris's Coding",
                      style: ktsTitleText.copyWith(),
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Policies",
                      style: ktsTitleText.copyWith(fontSize: 25),
                    ),
                    verticalSpaceSmall,
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Kebijakan Privasi",
                          style: ktsBodyRegular,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Syarat & Penggunaan",
                          style: ktsBodyRegular,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Ketentuan Pengguna",
                          style: ktsBodyRegular,
                        )),
                  ],
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Media Sosial",
                      style: ktsTitleText.copyWith(fontSize: 25),
                    ),
                    verticalSpaceSmall,
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.tiktok,
                          color: kcBlack,
                        ),
                        label: Text(
                          "@Tiktok_id",
                          style: ktsBodyRegular,
                        )),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        label: Text(
                          "@Facebook_id",
                          style: ktsBodyRegular,
                        )),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow_rounded,
                            color: Colors.red),
                        label: Text(
                          "@youtube_channel",
                          style: ktsBodyRegular,
                        )),
                  ],
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Email Bussiness:",
                      style: ktsTitleText.copyWith(fontSize: 25),
                    ),
                    verticalSpaceSmall,
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mail_outline_rounded,
                          color: Colors.blue,
                        ),
                        label: Text(
                          "zatunur.badar@gmail.com",
                          style: ktsBodyRegular,
                        )),
                  ],
                ))
          ],
        ),
        verticalSpaceMedium,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          height: 50,
          child: DefaultTextStyle(
            style: ktsBodyRegular.copyWith(
                color: kcPrimaryColor, fontWeight: FontWeight.w500),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "This website developed with Flutter and Stacked CLI by Chris Zatunur"),
                Text("Indonesia, Bandung"),
                Text("Copyright © 2024 All Rights Reserved")
              ],
            ),
          ),
        )
      ],
    );
  }
}
