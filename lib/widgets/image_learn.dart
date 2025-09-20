// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    // Ağdan bir resim yüklemeye çalışın, başarısız olursa yerel bir resim gösterin.
    var networkImage = Image.network(
      // Doğrudan bir resim dosyası URL'si kullanın
      "https://picsum.photos/250/250",
      // Resim yüklenemezse çalışacak hata yapıcı
      errorBuilder: (context, error, stackTrace) =>
          JpgImage(path: ProjectImages.applebook),
    );

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 400,
            // Yerel bir asset resmini gösterin
            child: JpgImage(path: ProjectImages.applebook),
          ),
          networkImage,
        ],
      ),
    );
  }
}

// Resim yollarını tek bir yerde tanımlamak için statik bir sınıf
class ProjectImages {
  static const String applebook = "applebook";
  static const String applebookPath = "assets/jpg.jpg";
}

// Asset resimleri kolayca yönetmek için ayrı bir widget
class JpgImage extends StatelessWidget {
  const JpgImage({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/jpg/$path.jpg", fit: BoxFit.cover, height: 200);
  }
}
