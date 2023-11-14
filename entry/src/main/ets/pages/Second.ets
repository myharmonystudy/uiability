import router from '@ohos.router'
@Entry
@Component
struct Second {
  @State message: string = 'Second Page'
  @State src: string = (router.getParams() as Record<string, string>)['src'];

  build() {
    Row() {
      Column({ space: 20 }) {
        Text(this.message)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
        Text(`来自上一页: ${this.src}`)
          .fontSize(15)
          .fontColor(Color.Gray)
        Button('Back')
          .width('90%')
          .fontSize(20)
          .onClick(() => {
            router.showAlertBeforeBackPage({
              message: "返回到上一级吗？"
            })
            router.back({url:'pages/Index',params:{src:'Second传回来的消息'}})
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}