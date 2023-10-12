import 'package:awesome_select/awesome_select.dart';
import 'package:flutter/material.dart';

import '../choices.dart' as choices;

class FeaturesChoicesBuilder extends StatefulWidget {
  @override
  _FeaturesChoicesBuilderState createState() => _FeaturesChoicesBuilderState();
}

class _FeaturesChoicesBuilderState extends State<FeaturesChoicesBuilder> {
  int? _commute;
  int? _commute1;
  int? _commute2;
  int? _commute3;



  ThemeData get theme => Theme.of(context);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 7),
        SmartSelect<int?>.single(
          title: 'Type of Vessel',
          placeholder: 'Choose one',
          selectedValue: _commute,
          onChange: (selected) => setState(() => _commute = selected.value),
          modalType: S2ModalType.bottomSheet,
          modalHeader: false,
          choiceItems: S2Choice.listFrom<int, Map<String, String>>(
            source: choices.transports,
            value: (index, item) => index,
            title: (index, item) => item['title'] ?? '',
            subtitle: (index, item) => item['subtitle'] ?? '',
            meta: (index, item) => item,
          ),
          choiceLayout: S2ChoiceLayout.wrap,
          choiceDirection: Axis.horizontal,
          choiceBuilder: (context, state, choice) {
            return Card(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              color: choice.selected ? theme.primaryColor : theme.cardColor,
              child: InkWell(
                onTap: () => choice.select?.call(true),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(choice.meta['image']),
                          child: choice.selected
                              ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          choice.title ?? '',
                          style: TextStyle(
                            color: choice.selected ? Colors.white : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          tileBuilder: (context, state) {
            String avatar = (state.selected.choice?.meta ?? {})['image'] ??
                'https://th.bing.com/th/id/OIP.X2imhRavNOJvQQgX3EZnOwHaHT?pid=ImgDet&rs=1';
            return S2Tile.fromState(
              state,
              isTwoLine: true,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(avatar),
              ),
            );
          },
        ),
        const Divider(indent: 20),
        SmartSelect<int?>.single(
          title: 'Cargo Type',
          placeholder: 'Choose one',
          selectedValue: _commute1,
          onChange: (selected) => setState(() => _commute1 = selected.value),
          modalType: S2ModalType.bottomSheet,
          modalHeader: false,
          choiceItems: S2Choice.listFrom<int, Map<String, String>>(
            source: choices.type,
            value: (index, item) => index,
            title: (index, item) => item['title'] ?? '',
            subtitle: (index, item) => item['subtitle'] ?? '',
            meta: (index, item) => item,
          ),
          choiceLayout: S2ChoiceLayout.wrap,
          choiceDirection: Axis.horizontal,
          choiceBuilder: (context, state, choice) {
            return Card(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              color: choice.selected ? theme.primaryColor : theme.cardColor,
              child: InkWell(
                onTap: () => choice.select?.call(true),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(choice.meta['image']),
                          child: choice.selected
                              ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          choice.title ?? '',
                          style: TextStyle(
                            color: choice.selected ? Colors.white : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          tileBuilder: (context, state) {
            String avatar = (state.selected.choice?.meta ?? {})['image'] ??
                'https://th.bing.com/th/id/OIP.X2imhRavNOJvQQgX3EZnOwHaHT?pid=ImgDet&rs=1';
            return S2Tile.fromState(
              state,
              isTwoLine: true,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(avatar),
              ),
            );
          },
        ),
        const SizedBox(height: 7),
        SmartSelect<int?>.single(
          title: 'Flag',
          placeholder: 'Choose one',
          selectedValue: _commute2,
          onChange: (selected) => setState(() => _commute2 = selected.value),
          modalType: S2ModalType.bottomSheet,
          modalHeader: false,
          choiceItems: S2Choice.listFrom<int, Map<String, String>>(
            source: choices.flags,
            value: (index, item) => index,
            title: (index, item) => item['title'] ?? '',
            subtitle: (index, item) => item['subtitle'] ?? '',
            meta: (index, item) => item,
          ),
          choiceLayout: S2ChoiceLayout.wrap,
          choiceDirection: Axis.horizontal,
          choiceBuilder: (context, state, choice) {
            return Card(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              color: choice.selected ? theme.primaryColor : theme.cardColor,
              child: InkWell(
                onTap: () => choice.select?.call(true),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(choice.meta['image']),
                          child: choice.selected
                              ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          choice.title ?? '',
                          style: TextStyle(
                            color: choice.selected ? Colors.white : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          tileBuilder: (context, state) {
            String avatar = (state.selected.choice?.meta ?? {})['image'] ??
                'https://th.bing.com/th/id/OIP.X2imhRavNOJvQQgX3EZnOwHaHT?pid=ImgDet&rs=1';
            return S2Tile.fromState(
              state,
              isTwoLine: true,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(avatar),
              ),
            );
          },
        ),
        const Divider(indent: 20),const SizedBox(height: 7),
        SmartSelect<int?>.single(
          title: 'Size',
          placeholder: 'Choose one',
          selectedValue: _commute3,
          onChange: (selected) => setState(() => _commute3 = selected.value),
          modalType: S2ModalType.bottomSheet,
          modalHeader: false,
          choiceItems: S2Choice.listFrom<int, Map<String, String>>(
            source: choices.sizes,
            value: (index, item) => index,
            title: (index, item) => item['title'] ?? '',
            subtitle: (index, item) => item['subtitle'] ?? '',
            meta: (index, item) => item,
          ),
          choiceLayout: S2ChoiceLayout.wrap,
          choiceDirection: Axis.horizontal,
          choiceBuilder: (context, state, choice) {
            return Card(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              color: choice.selected ? theme.primaryColor : theme.cardColor,
              child: InkWell(
                onTap: () => choice.select?.call(true),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(choice.meta['image']),
                          child: choice.selected
                              ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          choice.title ?? '',
                          style: TextStyle(
                            color: choice.selected ? Colors.white : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          tileBuilder: (context, state) {
            String avatar = (state.selected.choice?.meta ?? {})['image'] ??
                'https://th.bing.com/th/id/OIP.X2imhRavNOJvQQgX3EZnOwHaHT?pid=ImgDet&rs=1';
            return S2Tile.fromState(
              state,
              isTwoLine: true,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(avatar),
              ),
            );
          },
        ),
        const Divider(indent: 20),
      ],
    );
  }


}
