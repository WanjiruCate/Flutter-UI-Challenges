class OnboardingData {
  String title;
  String description;
  String imageAsset;

  OnboardingData({
    this.title,
    this.description,
    this.imageAsset,
  });
  void setTitle(String titleSet) {
    title = titleSet;
  }

  void setDesc(String descSet) {
    description = descSet;
  }

  void setImageAsset(String assetSet) {
    imageAsset = assetSet;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }

  String getImageAsset() {
    return imageAsset;
  }
}

List<OnboardingData> getPageViews() {
  List<OnboardingData> slides = new List<OnboardingData>();
  OnboardingData onboardingData = new OnboardingData();

  onboardingData.setTitle('Book');
  onboardingData.setDesc(
      'euLorem Ipsum Lorem Ipsum Lorem IpsumLorem IpsumLorem Ipsum Lorem IpsumLorem Ipsum Lorem Ipsum Lorem Lorem Ipsum ewdyuLorem Lorem Ipsum Lorem Ipsum');
  onboardingData.setImageAsset('assets/illustration.png');
  slides.add(onboardingData);

  onboardingData = new OnboardingData();

  onboardingData.setTitle('Search');
  onboardingData.setDesc(
      ' Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ewdyusio wetfuidso');
  onboardingData.setImageAsset('assets/illustration2.png');
  slides.add(onboardingData);

  onboardingData = new OnboardingData();

  onboardingData.setTitle('Create');
  onboardingData.setDesc(
      'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum');
  onboardingData.setImageAsset('assets/illustration3.png');
  slides.add(onboardingData);

  onboardingData = new OnboardingData();

  return slides;
}
