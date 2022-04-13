//
//  Survey.swift
//  healTea
//
//  Created by eunji on 2022/04/12.
//

import SwiftUI

struct Survey: View {
    
    @State var items: [String] = ["나는 카페인을 즐겨마신다.", "Two", "Three", "Four", "Five"]
    @State var selections: [String] = []
    
    var body: some View {
        VStack {
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
                Spacer()
            }
            Button("완료") {
                //메인페이지 or 이전페이지로 이동.
            }
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
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
                    
            }
            .padding()
            .foregroundColor(Color.black)
            .frame(width: 300, height: 55, alignment: .leading)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.green, lineWidth: 2))
            
        }
        .padding(9)
    }
}



struct Survey_Previews: PreviewProvider {
    static var previews: some View {
        Survey()
    }
}
