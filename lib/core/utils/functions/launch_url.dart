import 'package:booking/core/utils/functions/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(context, dynamic bookModel) async {
  Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);

  if (await canLaunchUrl(uri)) {
    launchUrl(uri);
  } else {
    customSnackBar(context, 'we cannot launch url');
  }
}
