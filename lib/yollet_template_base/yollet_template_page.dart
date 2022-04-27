import 'dart:convert';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
// import 'package:widgte_template/manager/redux/action.dart';
import 'package:yollet_system/yollet_navigation.dart';
import 'package:yollet_system/yollet_redux.dart';
import 'package:yollet_system/yollet_theme.dart';
import 'package:yollet_system/yollet_utilities.dart';

class YolletTemplatePage extends StatefulWidget {
  @override
  State<YolletTemplatePage> createState() => _YolletTemplatePageState();
}

class _YolletTemplatePageState extends State<YolletTemplatePage> {
  List<Widget> widgets = [];
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppStateSimple, AppStateSimple>(
      converter: (store) => store.state,
      builder: (_, state) => Scaffold(
          appBar: AppBar(
              leadingWidth: 200,
              leading: ElevatedButton(
                onPressed: _onSelectJson,
                child: SizedText(
                    text: state.basketState.totalDue.toString(),
                    textStyle:
                        ThemeTextRegular.xl.copyWith(color: ThemeColors.black)),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: SizedText(
                  text: 'NoCode-P',
                  textStyle:
                      ThemeTextRegular.xl4.copyWith(color: ThemeColors.black))),
          body: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
                flex: 1,
                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                widgets = [
                                  ...widgets,
                                  ...WidgetParser.parseWidgetFromMap({
                                    "DefaultInput": {
                                      "labelText": "Label Text 1",
                                      "hintText": "sdsads",
                                      "keyboardType": "number"
                                    },
                                  })
                                ];
                              });
                            },
                            child: SizedText(
                                text: 'DefaultSwitch',
                                textStyle: ThemeTextRegular.xl),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                widgets = [
                                  ...widgets,
                                  ...WidgetParser.parseWidgetFromMap({
                                    "DefaultCard": {
                                      "bodyName": "JSON Body Name",
                                      "childName": "JSON Child Name",
                                      "headName": "JSON Head Name",
                                      "backgroundColor": "lime50",
                                      "headNameColor": "amber500"
                                    },
                                  })
                                ];
                              });
                            },
                            child: SizedText(
                                text: 'DefaultCard',
                                textStyle: ThemeTextRegular.xl),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                widgets = [
                                  ...widgets,
                                  ...WidgetParser.parseWidgetFromMap({
                                    "DefaultButton": {
                                      "buttonText": "Download excel",
                                      "onPressed": "ACTION",
                                      "sizeOfButton": "m",
                                      "variant": "ghost",
                                      "icon": "qrcode"
                                    },
                                  })
                                ];
                              });
                            },
                            child: SizedText(
                                text: 'DefaultButton',
                                textStyle: ThemeTextRegular.xl),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                widgets = [
                                  ...widgets,
                                  ...WidgetParser.parseWidgetFromMap({
                                    "DefaultDropdown": {
                                      "listValues": [
                                        "option1",
                                        "option222222",
                                        "option3"
                                      ],
                                      "hintText": "New hint text",
                                      "label": "Label1"
                                    },
                                  })
                                ];
                              });
                            },
                            child: SizedText(
                                text: 'DefaultDropdown',
                                textStyle: ThemeTextRegular.xl),
                          ),
                        ],
                      ),
                    ),
                    height: MediaQuery.of(context).size.height,
                    color: ThemeColors.blue300.withOpacity(0.5))),
            Expanded(
                flex: 2,
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widgets,
                      ),
                    ),
                    height: MediaQuery.of(context).size.height,
                    color: ThemeColors.blue200.withOpacity(0.5))),
            Expanded(
                flex: 1,
                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ),
                    height: MediaQuery.of(context).size.height,
                    color: ThemeColors.blue300.withOpacity(0.5))),
          ])),
    );
  }

  _onSelectJson() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      Uint8List bytes = result.files.single.bytes!;
      Map map = json.decode(utf8.decode(bytes));
      setState(() {
        widgets = [...widgets, ...WidgetParser.parseWidgetFromMap(map)];
      });
    } else {
      // User canceled the picker
    }
  }
}
