import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/request/question_create_request.dart';
import 'package:freezed_demo/data/model/response/question/question_detail_response.dart';

import '../../../viewmodel/provider/question_provider.dart';
import '../../component/appbar.dart';
import '../../uiconfig.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(detailQuestionProvider);
    final providerCreate = ref.watch(createQuestionProvider(
        const QuestionCreateRequest(
            question: "test nanya", answer: "test jawab")));

    return Scaffold(
      backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBarWithoutListButtonComponent(UiConfig.titleDetailQuestion),
      body: Container(
          child: provider.when(
              data: (data) => showDetail(data.data),
              error: (err, stack) => Text("Errror: ${err.toString()}"),
              loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ))),
    );
  }

  Widget showDetail(Data data) {
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: [
          FadeInImage.assetNetwork(
            placeholder: 'assets/placeholder.png',
            image: data.image,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(data.question,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ))),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                data.answer,
                style: TextStyle(color: Colors.yellow, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
