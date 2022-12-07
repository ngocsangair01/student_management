import 'package:flutter/material.dart';
import 'package:student_management/models/subjects.dart';
import 'package:student_management/models/timetable_details.dart';

// class SubjectDetailScreen1 extends StatefulWidget {
//   final Subject subject;
//   // final TimeTableDetail timeTableDetail;
//   const SubjectDetailScreen({Key? key,required this.subject}) : super(key: key);
//
//   @override
//   State<SubjectDetailScreen> createState() => _SubjectDetailScreenState();
// }
//
// class _SubjectDetailScreenState extends State<SubjectDetailScreen1> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//   ListView _buildListView(){
//     return ListView.builder(
//         itemBuilder: (context,index){
//           var timetableDetail = widget.subject.timeTableDetails?[0];
//           String week = timetableDetail?.week as String;
//           String from = timetableDetail?.from as String;
//           String timeDetail = timetableDetail?.timeDetail as String;
//           return Container(
//             child: Column(
//               children: [
//                 Text(week),
//                 Text(from),
//                 Text(timeDetail),
//               ],
//             ),
//           );
//         },
//         itemCount: widget.subject.timeTableDetails?.length,
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     List timeTableDetail = widget.subject.timeTableDetails as List;
//     print(timeTableDetail);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chi tiết'),
//         centerTitle: true,
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: ListView(
//           children: [
//             Text(widget.subject.subjectName??""),
//             _buildListView(),
//           ],
//         ),
//       ),
//     );
//   }
// }
class SubjectDetailScreen extends StatelessWidget {
  final Subject subject;

  const SubjectDetailScreen({Key? key, required this.subject})
      : super(key: key);

  ListView _buildListView() {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var timetableDetail = subject.timeTableDetails?[index];
        int? week = timetableDetail?.week as int;
        String? from = timetableDetail?.from as String;
        String? timeDetail = timetableDetail?.timeDetail as String;
        return Container(
          child: Column(
            children: [
              Text('$week'),
              Text(from),
              Text(timeDetail),
            ],
          ),
        );
      },
      itemCount: subject.timeTableDetails?.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    List timeTableDetail = subject.timeTableDetails as List;
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Text(subject.subjectName ?? ""),
            _buildListView(),
          ],
        ),
      ),
    );
  }
}
