// ignore: camel_case_types
// ignore_for_file: file_names

class Size {
  final int id;
  final String images;
  final String size;
  bool applicable;

  Size(
      {required this.id,
      required this.images,
      required this.size,
      required this.applicable});
}

//List product samples

List<Size> demoSize = [
  Size(
      id: 1,
      images: 'android/assets/images/size.png',
      size: 'Classic',
      applicable: true),
  Size(
      images: 'android/assets/images/size.png',
      size: '16x16',
      id: 2,
      applicable: true),
  Size(
      images: 'android/assets/images/size.png',
      size: '18x18',
      id: 3,
      applicable: true)
];
