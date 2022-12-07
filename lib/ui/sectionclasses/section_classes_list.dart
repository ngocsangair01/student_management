import 'package:flutter/material.dart';
import 'package:student_management/ui/sectionclasses/session_provider.dart';

class SectionClassesList extends StatelessWidget {
  SessionProvider _sectionProvider;
  SectionClassesList(this._sectionProvider);

  ListView _buildListView() {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _sectionProvider.sectionClasses.length,
      itemBuilder: (context,index){
        var section = _sectionProvider.sectionClasses[index];
        return Container(
          height: 80,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 1.5),
                blurRadius: 3,
                spreadRadius: 0.5,
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.red,
          ),
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 20,),
                    Text('Lesson',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(section.numberOfUnit),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 60,
                width: 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 20,),
                    Text(section.name,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(section.name),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
            ],
          ),

        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
        children: [
          _buildListView(),
        ],
      ),
    );
  }
}
