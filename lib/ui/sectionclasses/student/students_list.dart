import 'package:flutter/material.dart';
import 'package:student_management/ui/sectionclasses/student/student_provider.dart';

class StudentList extends StatelessWidget {
  StudentProvider _studentProvider;
  StudentList(this._studentProvider);

  ListView _buildListView(){
    return ListView.builder(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: _studentProvider.students.length,
        itemBuilder: (context,index){
          var student = _studentProvider.students[index];
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
            child: InkWell(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 20,),
                        Text('Lesson',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(student.fullName??""),
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
                        Text(student.studentOfClass??"",style: TextStyle(fontWeight: FontWeight.bold),),
                        // Text(section.name),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> StudentScreen(subjectId)));
              },
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView(
        children: [
          _buildListView(),
        ],
      ),
    );
  }
}
