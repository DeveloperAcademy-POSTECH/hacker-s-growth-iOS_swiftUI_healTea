//
//  Survey.swift
//  healTea
//
//  Created by eunji on 2022/04/12.
//

import SwiftUI

struct Survey: View {
    
    @State var items: [String] = ["나는 카페인을 즐겨마신다.", "나는 단 걸 좋아한다.", "Three", "Four", "Five"]
    @State var selections: [String] = []
    
    var body: some View {
        
        VStack(alignment: .trailing) {
            
            VStack(alignment: .leading){

                VStack(alignment: .leading){
                    Text("선호도 조사")
                        .font(.title2)
                    Text("자신에게 해당되는 것을 눌러주세요.")
                        .font(.subheadline)
                }
                .padding(EdgeInsets(top: 80, leading: 10, bottom: 20, trailing: 0))


                ForEach(self.items, id: \.self) { item in
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
            

            Button("완료") {
                //메인페이지 or 이전페이지로 이동.
            }
            .frame(width: 80, height: 30)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(ColorManager.DonationBar_2))
            .background(RoundedRectangle(cornerRadius: 10).fill(ColorManager.DonationBar_2))
            .foregroundColor(.white)
            
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
            .foregroundColor(Color.black)
            .frame(width: 300, height: 50, alignment: .leading)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(ColorManager.DonationBackground, lineWidth: 2))
            
        }
        .padding(5)
    }
}



struct Survey_Previews: PreviewProvider {
    static var previews: some View {
        Survey()
    }
}
