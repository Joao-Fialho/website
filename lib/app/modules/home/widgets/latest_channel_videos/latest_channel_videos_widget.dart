import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/data/youtube_data.dart';
import 'package:flutterando/app/modules/home/widgets/latest_channel_videos/latest_channel_videos_controller.dart';
import 'package:flutterando/app/modules/home/widgets/latest_channel_videos/widgets/channel_video_tile.dart';
import 'package:flutterando/app/utils/colors/colors.dart';
import 'package:flutterando/app/utils/grids/number_grid_row_items_by_screen_size.dart';
import 'package:flutterando/app/utils/text_styles/text_styles.dart';

class LatestChannelVideosWidget extends StatefulWidget {
  @override
  _LatestChannelVideosWidgetState createState() =>
      _LatestChannelVideosWidgetState();
}

class _LatestChannelVideosWidgetState extends ModularState<
    LatestChannelVideosWidget, LatestChannelVideosController> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = controller.screen.atualScreenWidth(context: context);
    final screen = controller.screen;
    final fontScale = screen.fontScale(context);
    final numberGridRowItemsByScreenSize =
        NumberGridRowItemsByScreenSize(1, 2, 3, 3, 4);
    final numberGridRowItems = screen.numberGridRowItems(
        screen, context, numberGridRowItemsByScreenSize);

    return Container(
      padding: EdgeInsets.only(
        top: 40 * fontScale,
        left: (screenWidth / 15) * fontScale,
        right: (screenWidth / 15) * fontScale,
      ),
      color: GrayColors.gray01,
      width: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            'Últimos vídeos do canal',
            style: TextStyles.notoSans(
              25 * fontScale,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 28),
          SelectableText(
            'Fique por dentro do nosso conteúdo mais recente',
            style: TextStyles.roboto(
              11 * fontScale,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 40 * fontScale),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: latestVideos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.01,
                crossAxisCount: numberGridRowItems,
                crossAxisSpacing: 15 * fontScale,
                mainAxisSpacing: 15 * fontScale),
            itemBuilder: (_, index) {
              return GridTile(
                child: ChannelVideoTile(latestVideos[index]),
              );
            },
          ),
          SizedBox(height: 50 * fontScale)
        ],
      ),
    );
  }
}
