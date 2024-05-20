import 'package:evreka_case/models/container_model/container_model.dart';
import 'package:evreka_case/presentation/components/buttons/app_main_button.dart';
import 'package:evreka_case/utilities/constants/color_constants/color_constants.dart';
import 'package:evreka_case/utilities/constants/text_style_constants/text_style_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerDetailCard extends StatelessWidget {
  const ContainerDetailCard({super.key, required this.isCardVisible, required this.container});

  final bool isCardVisible;
  final ContainerModel container;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isCardVisible,
      child: Padding(
        padding: EdgeInsets.only(bottom: 26.h),
        child: Container(
          width: 336.w,
          height: 219.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstants().white,
            boxShadow: [
              BoxShadow(
                color: ColorConstants().black.withOpacity(0.29),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(3, 6),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 19.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Container #${container.containerId ?? ""}",
                      style: TextStyleConstants().w700s20DarkBlue,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: 145.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                container.description ?? "",
                                style: TextStyleConstants().w800s16DarkGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                container.dateOfData ?? "",
                                style: TextStyleConstants().w400s16DarkGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 145.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Sensor Id",
                                style: TextStyleConstants().w800s16DarkGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "%${container.sensorId ?? ""}",
                                style: TextStyleConstants().w400s16DarkGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: 145.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Temperature Rate",
                                style: TextStyleConstants().w800s16DarkGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "${container.temperatureRate}°C".toString(),
                                style: TextStyleConstants().w400s16DarkGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 145.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Fullness Rate",
                                style: TextStyleConstants().w800s16DarkGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "%${container.occupancyRate}",
                                style: TextStyleConstants().w400s16DarkGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    AppMainButton(
                      buttonText: "RELOCATE",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
