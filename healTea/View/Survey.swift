//
//  Survey.swift
//  healTea
//
//  Created by eunji on 2022/04/12.
//

import SwiftUI

struct Survey: View {
    
    @State var items1: [String] = ["임산부", "고혈압", "저혈압", "당뇨병"]
    @State var items2: [String] = ["카페인", "고소한 맛", "견과류 맛", ]
    @State var selections: [String] = []
    
    var body: some View {

        VStack(alignment: .trailing) {
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    Text("사용자 조사")
                        .font(.title2)
                    Text("본인에게 해당되는 것을 선택하세요.")
                        .font(.subheadline).foregroundColor(.gray)
                }
                .padding(EdgeInsets(top: 50, leading: 0, bottom: 30, trailing: 0))
                VStack(alignment: .leading) {
                    Text("특이사항 및 질병").font(.subheadline)
                ForEach(self.items1, id: \.self) { item in
                    MultipleSelectionRow(question: item, isSelected: self.selections.contains(item)) {
                        if self.selections.contains(item) {
                            self.selections.removeAll(where: { $0 == item })
                        }
                        else {
                            self.selections.append(item)
                        }
                    }
                }
                }.padding(.bottom, 25)
                
                VStack(alignment: .leading) {
                Text("취향")
                ForEach(self.items2, id: \.self) { item in
                    MultipleSelectionRow(question: item, isSelected: self.selections.contains(item)) {
                        if self.selections.contains(item) {
                            self.selections.removeAll(where: { $0 == item })
                        }
                        else {
                            self.selections.append(item)
                        }
                    }
                    }
                }
                
            }.padding(.bottom, 40)
            
          Button("완료") {
                //메인페이지 or 이전페이지로 이동.
            }
            .frame(width: 80, height: 30)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(ColorManager.DonationBar_2))
            .background(RoundedRectangle(cornerRadius: 10).fill(ColorManager.DonationBar_2))
            .foregroundColor(.white)
            .font(.system(size: 17))
            
            Spacer()
        }
    }
}



struct MultipleSelectionRow: View {
    var question: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.question)
                    .font(.system(size: 15, weight: .light))
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
                    
            }
            .padding()
            .frame(width: 300, height: 45, alignment: .leading)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(ColorManager.DonationBackground, lineWidth: 2))
            .foregroundColor(isSelected ? Color.black: Color.gray)

        }
        .padding(5)
    }
}



struct Survey_Previews: PreviewProvider {
    static var previews: some View {
        Survey()
    }
}
