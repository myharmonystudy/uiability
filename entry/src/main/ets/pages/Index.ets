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
        Button('Next').width('90%').fontSize(20)
      }
      .width('100%')
    }
    .height('100%')
  }
}