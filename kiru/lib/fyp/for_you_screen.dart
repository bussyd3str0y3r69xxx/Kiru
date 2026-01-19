import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/fyp/fyp_view.dart';
import 'package:kiru/images.dart';

enum _TabMenuItems { subscribes, recommendations }

class ForYouScreen extends StatefulWidget{
  const ForYouScreen({super.key});

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  _TabMenuItems _selected = _TabMenuItems.recommendations;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
       
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                 _ForYouScreenHeader(selected: _selected, onTapMenu: _updateSelected),
              if (_selected == _TabMenuItems.subscribes) _SubscribesContent(),
              if (_selected == _TabMenuItems.recommendations)
                _RecommendationsCpntent(),
          
              ],
            )
          ),
        ),
       
    );
    
  }
  void _updateSelected(_TabMenuItems newSelected) {
    
    setState(() {
      _selected = newSelected;
    });
  }
  
}
 
class _ForYouScreenHeader extends StatelessWidget{
    final _TabMenuItems selected;
    final void Function(_TabMenuItems) onTapMenu;
    const _ForYouScreenHeader({required this.selected, required this.onTapMenu});

    @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.search)
            ),
          ),
          Center(
            child: SizedBox(
              width: 266,
              height: 35,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    left: selected == _TabMenuItems.subscribes ? 0 : 139,
                    top: 0,
                    child: Container(
                      height: 35,
                      width: 127,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12,
                    children: [
                      GestureDetector(
                        onTap: () => onTapMenu(_TabMenuItems.subscribes),
                        child: Container(
                          width: 127,
                          height: 35,
                          alignment: Alignment.center,
                          child: Text(
                            'Подписки',
                            style: TextStyle(
                              color: _getTextColor(_TabMenuItems.subscribes),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => onTapMenu(_TabMenuItems.recommendations),
                        child: Container(
                          width: 127,
                          height: 35,
                          alignment: Alignment.center,
                          child: Text(
                            'Рекомендации',
                            style: TextStyle(
                              color: _getTextColor(_TabMenuItems.recommendations),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
   Color? _getTextColor(_TabMenuItems value) {
    return value == selected ? AppColors.white : AppColors.black;
  }
}

class _SubscribesContent extends StatelessWidget {
  const _SubscribesContent();

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('subscribes content'));
  }
}

class _RecommendationsCpntent extends StatelessWidget {
  const _RecommendationsCpntent();

  @override
  Widget build(BuildContext context) {
    return FypView();
  }

  }