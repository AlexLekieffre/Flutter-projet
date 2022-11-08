import 'package:flutter/material.dart';
import 'package:stage/Utils/app_color.dart';

class RadioBoxInput extends StatefulWidget {
  final List result;
  final List item;
  final double sizeHeight;
  final int type;

  final int id;
  final majState;
  const RadioBoxInput({
    super.key,
    required this.result,
    required this.id,
    required this.item,
    required this.sizeHeight,
    required this.type,
    required this.majState,
  });

  @override
  State<RadioBoxInput> createState() => _RadioBoxInputState();
}

class _RadioBoxInputState extends State<RadioBoxInput> {
  @override
  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    double sizeWidthScreen = MediaQuery.of(context).size.width;

    return widget.type == 1
        ? Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.item
                .map((e) => BoxRadio(
                      result: widget.result,
                      majState: widget.majState,
                      id: widget.id,
                      type: widget.type,
                      e: e,
                      item: widget.item,
                      sizeHeight: widget.sizeHeight,
                    ))
                .toList())
        : widget.type == 2
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.item
                    .map((e) => Padding(
                          padding: EdgeInsets.only(
                            bottom: 0.02 * sizeHeightcreen,
                          ),
                          child: BoxRadio(
                            result: widget.result,
                            majState: widget.majState,
                            id: widget.id,
                            type: widget.type,
                            e: e,
                            item: widget.item,
                            sizeHeight: widget.sizeHeight,
                          ),
                        ))
                    .toList())
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 0.9 * sizeWidthScreen,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.item
                          .map((e) => e['ligne'] == 1
                              ? Expanded(
                                  flex: e['item'].length > 12
                                      ? 10
                                      : e['item'].length < 8
                                          ? e['item'].length
                                          : 7,
                                  child: BoxRadio(
                                    result: widget.result,
                                    majState: widget.majState,
                                    id: widget.id,
                                    type: widget.type,
                                    e: e,
                                    item: widget.item,
                                    sizeHeight: widget.sizeHeight,
                                  ),
                                )
                              : Container())
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    width: 0.9 * sizeWidthScreen,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.item
                          .map((e) => e['ligne'] == 2
                              ? Expanded(
                                  flex: e['item'].length,
                                  child: BoxRadio(
                                    result: widget.result,
                                    majState: widget.majState,
                                    id: widget.id,
                                    type: widget.type,
                                    e: e,
                                    item: widget.item,
                                    sizeHeight: widget.sizeHeight,
                                  ),
                                )
                              : Container())
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    width: 0.9 * sizeWidthScreen,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.item
                          .map((e) => e['ligne'] == 3
                              ? Expanded(
                                  flex: e['item'].length,
                                  child: BoxRadio(
                                    result: widget.result,
                                    majState: widget.majState,
                                    id: widget.id,
                                    type: widget.type,
                                    e: e,
                                    item: widget.item,
                                    sizeHeight: widget.sizeHeight,
                                  ),
                                )
                              : Container())
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    width: 0.9 * sizeWidthScreen,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.item
                          .map((e) => e['ligne'] == 4
                              ? Expanded(
                                  flex: e['item'].length,
                                  child: BoxRadio(
                                    result: widget.result,
                                    majState: widget.majState,
                                    id: widget.id,
                                    type: widget.type,
                                    e: e,
                                    item: widget.item,
                                    sizeHeight: widget.sizeHeight,
                                  ),
                                )
                              : Container())
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    width: 0.9 * sizeWidthScreen,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.item
                          .map((e) => e['ligne'] == 5
                              ? Expanded(
                                  flex: e['item'].length,
                                  child: BoxRadio(
                                    result: widget.result,
                                    majState: widget.majState,
                                    id: widget.id,
                                    type: widget.type,
                                    e: e,
                                    item: widget.item,
                                    sizeHeight: widget.sizeHeight,
                                  ),
                                )
                              : Container())
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    width: 0.9 * sizeWidthScreen,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.item
                          .map((e) => e['ligne'] == 6
                              ? Expanded(
                                  flex: e['item'].length,
                                  child: BoxRadio(
                                    result: widget.result,
                                    majState: widget.majState,
                                    id: widget.id,
                                    type: widget.type,
                                    e: e,
                                    item: widget.item,
                                    sizeHeight: widget.sizeHeight,
                                  ),
                                )
                              : Container())
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    width: 0.9 * sizeWidthScreen,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widget.item
                          .map((e) => e['ligne'] == 7
                              ? Expanded(
                                  flex: e['item'].length,
                                  child: BoxRadio(
                                    result: widget.result,
                                    majState: widget.majState,
                                    id: widget.id,
                                    type: widget.type,
                                    e: e,
                                    item: widget.item,
                                    sizeHeight: widget.sizeHeight,
                                  ),
                                )
                              : Container())
                          .toList(),
                    ),
                  ),
                ],
              );
  }
}

class BoxRadio extends StatefulWidget {
  final List result;
  final int id;
  final int type;
  final List item;
  final dynamic e;
  final double sizeHeight;
  final majState;

  const BoxRadio(
      {super.key,
      required this.result,
      required this.id,
      required this.e,
      required this.item,
      required this.sizeHeight,
      required this.majState,
      required this.type});

  @override
  State<BoxRadio> createState() => _BoxRadioState();
}

class _BoxRadioState extends State<BoxRadio> {
  @override
  Widget build(BuildContext context) {
    double sizeHeightcreen = MediaQuery.of(context).size.height;
    double sizeWidthScreen = MediaQuery.of(context).size.width;

    return InkWell(
      splashColor: Colors.cyanAccent,
      onTap: () {
        widget.type == 1 || widget.type == 2
            ? widget.majState(widget.e['item'], widget.id)
            : null;
        widget.type == 2 ? Navigator.pop(context) : null;

        if (widget.type == 3) {
          if (widget.result[widget.id].toString() == 'String') {
            widget.majState(widget.e['item'], widget.id);
          } else {
            if (widget.result[widget.id]
                .toString()
                .contains(widget.e['item'])) {
              var value = widget.result[widget.id]
                  .toString()
                  .replaceFirst('${widget.e["item"]}','').trim();
                   widget.majState(value, widget.id);
            }else{
            var value =
                "${widget.e['item']} ${widget.result[widget.id].toString()}";
            widget.majState(value, widget.id);}
          }
        }

        
      },
      child: Padding(
        padding: EdgeInsets.only(
            right: 0.01 * sizeWidthScreen,
            left: 0.01 * sizeWidthScreen,
            top: 0.01 * sizeHeightcreen),
        child: Container(
            width: widget.type == 1
                ? sizeWidthScreen * 0.80 / widget.item.length
                : widget.type == 2
                    ? 0.9 * sizeWidthScreen
                    : null,
            height: widget.sizeHeight * sizeHeightcreen,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: widget.type == 3
                    ? AppColor.whiteBackgroundColor
                    : AppColor.grayBackgroundColor,
                border: Border.all(
                    width: 3,
                    color: widget.result[widget.id] == widget.e['item']
                        ? Color(0xff72cab5)
                        : widget.type == 3 &&
                                widget.result[widget.id]
                                    .toString()
                                    .contains(widget.e['item'])
                            ? Color(0xff72cab5)
                            : widget.type == 3
                                ? Color(0xffe3f4f0)
                                : AppColor.grayBackgroundColor),
                borderRadius: BorderRadius.all(
                    Radius.circular(widget.type == 3 ? 6 : 10))),
            child: Text(
              widget.e['item'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: "Filson Soft",
                color: widget.type == 3 ||
                        widget.result[widget.id] == widget.e['item']
                    ? Color(0xff72cab5)
                    : AppColor.blackTextColor,
              ),
            )),
      ),
    );
  }
}
