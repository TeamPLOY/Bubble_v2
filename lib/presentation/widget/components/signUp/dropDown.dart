import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/app/controller/dropdownData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Dropdown extends StatefulWidget {
  final List<String> array;
  final int isContent;
  const Dropdown({required this.isContent, required this.array, super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  late String text;
  late String data;
  bool isOpen = false;

  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  final DropdownController dropdownController = Get.find<DropdownController>();

  @override
  void initState() {
    super.initState();
    data = widget.array.first;

    switch (widget.isContent) {
      case 1:
        text = '학년';
        break;
      case 2:
        text = '반';
        break;
      case 3:
        text = '번';
        break;
      case 4:
        text = '동';
        break;
      default:
        text = '';
    }
  }

  void toggleDropdown() {
    if (isOpen) {
      removeOverlay();
    } else {
      showOverlay();
    }
    setState(() {
      isOpen = !isOpen;
    });
  }

  void showOverlay() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        width: (MediaQuery.of(context).size.width - 64) / 3,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: const Offset(0, 48),
          child: Material(
            child: Container(
              height: widget.isContent == 4 ? 90 : 126,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColor.gray300, width: 1),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: widget.array.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        data = widget.array[index];
                        dropdownController.changeDatas(widget.isContent, data);
                        toggleDropdown();
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.white100,
                      ),
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(
                        widget.array[index],
                        style: AppTextStyles.R16.copyWith(color: AppColor.gray800),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CompositedTransformTarget(
          link: _layerLink,
          child: GestureDetector(
            onTap: toggleDropdown,
            child: Container(
              width: (MediaQuery.of(context).size.width - 64) / 3,
              height: 44,
              decoration: BoxDecoration(
                color: AppColor.white100,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: AppColor.gray300, width: 1),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$data$text', style: AppTextStyles.R14.copyWith(color: AppColor.gray900)),
                  SvgPicture.asset('assets/images/down.svg'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    removeOverlay();
    super.dispose();
  }
}
