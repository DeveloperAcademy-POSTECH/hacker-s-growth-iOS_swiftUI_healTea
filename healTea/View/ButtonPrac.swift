//
//  ButtonPrac.swift
//  healTea
//
//  Created by 유정인 on 2022/04/14.
//

//import SwiftUI
//
//struct ButtonPrac: View {
//    var body: some View {
//        HStack(spacing: 10) {  // 10씩 띄어서 수평으로
//          ForEach((1...6), id: \.self) { table in  // tablebutton에 있는 table을 6번 반복 생성
//            TableButton(table: table)
//          }
//        }
//    }
//}
//
//struct TableButton: View {
//    @State private var selected = false  // select 상태를 false로
//
//    var table: Int
//
//    var body: some View {
//        Button("\(table)") {  // table 넘버가 1~6까지 생성
//            self.selected.toggle()  // self는 class에서 자기자신을 가리키는 단어. self.selected라는 것은 이 메서드(?) 내에서 정의된 selected가 toggle 되도록
//        }
//        .frame(width: 50, height: 50)  // 50 크기의 clipshape에서 설정된 circle
//        .background(selected ? Color.blue : Color.red)  // select가 될 경우 color를 blue로 선택이 되지 않는 경우에는 red로
//        .foregroundColor(selected ? Color.black : Color.white)
//        .clipShape(Circle())
//    }
//}
//
//struct ButtonPrac_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonPrac()
//    }
//}
