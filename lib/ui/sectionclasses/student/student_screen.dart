import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_management/ui/sectionclasses/student/student_provider.dart';
import 'package:student_management/ui/sectionclasses/student/students_list.dart';

class StudentScreen extends StatelessWidget {
  int subjectId;

  StudentScreen(this.subjectId);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StudentProvider>.value(
      value: StudentProvider(subjectId),
      child: _BodyWidget(),
    );
  }
}

class _BodyWidget extends StatefulWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  State<_BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<_BodyWidget> {
  late StudentProvider _provider;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    _provider = Provider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
        centerTitle: false,
      ),
      body: _provider.loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              child: Column(
                children: [
                  StudentList(_provider),
                ],
              ),
            ),
    );
  }
}
