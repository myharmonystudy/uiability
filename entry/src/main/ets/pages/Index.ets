import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'Index Page'

  build() {
    Row() {
      Column({ space: 20 }) {
        Text(this.message)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
        Button('Next').width('90%').fontSize(20).onClick(()=>{
          router.pushUrl({
            url: 'pages/Second',
            params: {
              src: "我永远喜欢爱莉希雅"
            }
            //   API9新增单实例模式和多实例模式
            //   在单实例模式下：如果目标页面的url在页面栈中已经存在同url页面，
            //   离栈顶最近同url页面会被移动到栈顶，移动后的页面为新建页，
            //   原来的页面仍然存在栈中，页面栈的元素数量不变；
          },router.RouterMode.Single)
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}