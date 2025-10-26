import 'package:flutter/material.dart';
import 'package:todolist/controller/utills/appcolors.dart';
class ContainerWidget extends StatelessWidget {
  final Color color;
  const ContainerWidget({super.key,required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            height:20,
            width:double.infinity,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
              color:color,
            )
        ),
        Container(
            height:90,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.WhiteColor,
                borderRadius:BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),)
            ),
            child:Row(
                children:[
                  CircleAvatar(
                    radius:40,
                    backgroundColor: AppColors.GreyColor,
                  ),
                  SizedBox(width:5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children:
                      [
                        Container(
                            height:10,
                            width:300,
                            decoration:BoxDecoration(
                              color:AppColors.GreyColor,
                              borderRadius:BorderRadius.circular(10),
                            )
                        ),
                        SizedBox(height: 5,),
                        Container(
                            height:10,
                            width:250,
                            decoration:BoxDecoration(
                              color:AppColors.GreyColor,
                              borderRadius:BorderRadius.circular(10),
                            )
                        ),
                        SizedBox(height: 10,),
                        Container(
                            height:10,
                            width:340,
                            decoration:BoxDecoration(
                              color:AppColors.GreyColor,
                              borderRadius:BorderRadius.circular(10),
                            )
                        ),
                      ]
                  )
                ]
            ))
      ],
    );
  }
}
