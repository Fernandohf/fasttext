import 'package:http/http.dart';
import 'package:universal_io/io.dart';

String? downloadModel(String langId,
    {String ifExists = "ignore", int dimension = 100}) {
  String fileName = "cc.$langId.300.bin";
  String gzFileName = "$fileName.gz";

  if (File(gzFileName).existsSync()) {
    if (ifExists == "ignore") {
      return fileName;
    } else if (ifExists == "overwrite") {
      print("Overwriting existing model");
    }
  }
  // TODO download model
  return fileName;
}

bool _downloadGzFile(String gzFileName) {
  String url =
      "https://dl.fbaipublicfiles.com/fasttext/vectors-crawl/$gzFileName";
  // TODO
  return true;
}
