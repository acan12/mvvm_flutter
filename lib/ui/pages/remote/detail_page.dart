import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/response/question/question_detail_response.dart';


import '../../../viewmodel/provider/question_provider.dart';
import '../../component/appbar.dart';
import '../../uiconfig.dart';

class DetailPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(detailQuestionProvider);
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBarWithoutListButtonComponent(UiConfig.titleDetailQuestion),
      body: Container(
          child: provider.when(
              data: (data) => showDetail(data.data),
              error: (err, stack) => Text("Errror: ${err.toString()}"),
              loading: () => Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ))),
    );
  }

  Widget showDetail(Data data) {
    return Container(
      child: Column(
        children: [
          FadeInImage.assetNetwork(
            placeholder: 'assets/placeholder.png',
            image: data.image,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(data.question,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ))),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                data.answer,
                style: TextStyle(color: Colors.yellow, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
