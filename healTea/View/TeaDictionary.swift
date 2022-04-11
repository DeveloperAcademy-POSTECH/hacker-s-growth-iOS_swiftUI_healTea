//
//  Dictionary.swift
//  healTea
//
//  Created by Terry Koo on 2022/04/07.
//
import SwiftUI


//struct TeaDictionary: View {
//    @State var teaData: [TeaData]
//
//    var body: some View {
//        HStack {
//            Text(teaData[0].temperature)
//        }
//    }
//}


struct TeaDictionary: View {
    
    var teaData: [TeaData]

    
    init(teaData: [TeaData]) {
        self.teaData = teaData
    }
    
    var category1: [String] {
        makeMainCategoryArr(data: teaData)
    }
    
    var category2: [String : [String]] {
        let main = category1
        var middle: [String : [String]] = [:]
        
        for i in 0 ..< main.count {
            middle[main[i]] = Array<String>()
            for j in 0 ..< teaData.count {
                if teaData[j].category1 == main[i] {
                    middle[main[i]]!.append(teaData[j].category2)
                }
                middle[main[i]] = Array(Set(middle[main[i]]!).sorted(by: <))
                
            }
        }
        
        return middle
    }
    
    func makeMainCategoryArr(data: [TeaData]) -> [String]{
        var category: [String] = []
        for i in 0 ..< data.count {
            category.append(data[i].category1)
        }
        category = (Array(Set(category))).sorted(by: <)
        category.insert("대분류", at: 0)
        return category
    }
    
    
//    func deleteFirstValue( arr : [String]) -> [String] {
//        var copy: [String] = Array<String>()
//        for i in 0 ..< arr.count {
//            if i != 0 {
//                copy.append(arr[i])
//            }
//        }
//        return copy
//    }
//    var afterCategory1: [String]{
//        deleteFirstValue(arr: category1)
//    }
    
    
    @State var selectedCategory1 = -1
    @State var selectedCategory2 = 0
    @State var temp = 0
    
    var body: some View {
        VStack {
            Text("[search bar]")
      
            HStack{
                
                VStack{
                    Picker("대분류",selection: $selectedCategory1) {
                        ForEach(0 ..< category1.count, id: \.self) { index in
                                Text(self.category1[index])
                        }
                    }

                }
             //   .background(.green)
        
            
                
                if selectedCategory1 > 0 {
                    
//                    Picker("대분류",selection: $selectedCategory1) {
//                        ForEach(0 ..< afterCategory1.count, id: \.self) { index in
//                            Text(afterCategory1[index])
//                        }
//                    }
                    
                    let middleCategory: [String] = category2[category1[selectedCategory1]]!
                    Picker(selection: $selectedCategory2, label: Text("중분류")) {
                        ForEach(0 ..< middleCategory.count, id: \.self) { index in
                            Text(middleCategory[index])
                        }
                    }
                } else {
                   
                    Picker(selection: $temp, label: Text("없음")) {
                        Text("중분류")

                    }
                }
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            
            if selectedCategory1 > 0  {
                Text("You selected \(category1[selectedCategory1]) - \(category2[category1[selectedCategory1]]![selectedCategory2])")
            }
            
            let data = Array(1...20).map { "Tea \($0)"}
                
            //화면을 그리드형식으로 꽉채워줌
            let columns = [
                GridItem(.adaptive(minimum: 130))
            ]
            
            ScrollView {
                       LazyVGrid(columns: columns,  spacing: 20) {
                           ForEach(data, id: \.self) {i in
                            //VStack으로 도형추가
                               ZStack{
                                   RoundedRectangle(cornerRadius: 20)
                                       .strokeBorder(lineWidth: 3)
                                       .foregroundColor(.green)
                                       .shadow(color: .gray, radius: 3, x: 2, y: 2)
                                       
                                         
                                   VStack {
                                       Image("tea_0")
                                          .resizable()
                                          .aspectRatio(contentMode: .fill)
                                       VStack{
                                           HStack{
                                               Spacer()
                                               Text("녹차")
                                           }
                                           HStack{
                                               Button(action: {}, label: {Text("+")})
                                               Spacer()
                                               Text(i)
                                                   .foregroundColor(.secondary)
                                               
                                           }
                                       }
                              
                                   }
                                   .padding()
                                   
                               }
                           } // ForEach
                       }
                       .padding(.horizontal)
                   }

            Spacer()
        }
    }
}









struct TeaDictionary_Previews: PreviewProvider {
    static var previews: some View {
//        TeaDictionary(teaData: TeaData.teaData)
        TeaDictionary(teaData: TeaData.teaData)
    }
}
