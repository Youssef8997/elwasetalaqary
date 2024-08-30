import 'package:elwaset_elaqary_new/utls/extintion.dart';
import 'package:elwaset_elaqary_new/utls/manger/colors_manger.dart';
import 'package:elwaset_elaqary_new/utls/manger/fonts_manger.dart';
import 'package:flutter/material.dart';

import '../../../utls/widget/base_widget.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: context.height * .17,
        backgroundColor: ColorsManger.mainColor,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 70, right: 22, left: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "الرياض",
                        style: FontsManger.mediumFont(context)
                            .copyWith(color: Colors.white, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.white60,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "طريق الملك فهد، العليا، الرياض",
                            style: FontsManger.mediumFont(context)
                                .copyWith(color: Colors.white60, fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffF6F6F6),
                    ),
                    child: const Icon(Icons.notifications_none),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffF6F6F6),
                    ),
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
              TabBar(
                controller: tabController,
                labelStyle: FontsManger.largeFont(context).copyWith(color: Colors.white,fontSize: 12),
                unselectedLabelStyle:  FontsManger.largeFont(context).copyWith(color: const Color(0xff495A66),fontSize: 12),
                tabs: const [
                  Tab(
                    text: "الكل",
                  ),
                  Tab(
                    text: "شقق",
                  ),
                ],
                isScrollable: true,
                indicator: BoxDecoration(
                    gradient: linerBase(),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                indicatorPadding: const EdgeInsets.only(top: 40),

              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 72,
        width: context.width,
        decoration: const BoxDecoration(
color: ColorsManger.mainColor
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          ],
        ),
      ),
    );
  }
}
