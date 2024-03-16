import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:markdown_widget/markdown_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final tocController = TocController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Markdown Doc'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        surfaceTintColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 3.0,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: buildTocWidget(),
          ),
          Expanded(
            flex: 3,
            child: buildMarkdown(context),
          )
        ],
      ),
    );
  }

  Widget buildTocWidget() => TocWidget(controller: tocController);

  Widget buildMarkdown(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Obx(
      () => MarkdownWidget(
        tocController: tocController,
        data: controller.doc.value,
        config:
            isDark ? MarkdownConfig.darkConfig : MarkdownConfig.defaultConfig,
      ),
    );
  }
}
