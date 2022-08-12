import 'package:flutter/material.dart';
import 'package:travel_app/data/banner.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller =
        PageController(initialPage: 0, viewportFraction: 1);
    return PageView.builder(
      controller: controller,
      reverse: true,
      itemCount: banners.length,
      itemBuilder: (context, index) {
        var banner = banners[index];
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(banner.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
