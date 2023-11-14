import router from '@ohos.router'
@Entry
@Component
struct Second {
  @State message: string = 'Second Page'
  @State src: string = (router.getParams() as Record<string, string>)['src'];

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
        Text(this.src)
          .fontSize(15)
          .fontColor(Color.Gray)
      }
      .width('100%')
    }
    .height('100%')
  }
}