
import SwiftUI

 
struct TeaDictionary: View {
//    typealias btc = (Bool, UUID)
//
//    @State var up: btc = (false, UUID())
    
    //sheet 임시
    @State private var showingSheet = false
    
    
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
                
            } // inner for
        } // outter for
        //print("category2 \(middle)")
        return middle
    }
    
    func makeMainCategoryArr(data: [TeaData]) -> [String]{
        var category: [String] = []
        for i in 0 ..< data.count {
            category.append(data[i].category1)
        }
        category = (Array(Set(category))).sorted(by: <)
        category.insert("대분류 ▼", at: 0)
        return category
    }
    
    
    
    @State var selectedCategory1 = -1
    @State var selectedCategory2 = 0
    @State var temp = 0
    
    //search
    @State var searchText = ""
    
    var body: some View {
        VStack {
            ZStack{
                SearchBar(searchText: $searchText)
            }
      
            HStack{
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 13)
                            .fill(Color(hue: 0.179, saturation: 0.031, brightness: 0.92))
                            .frame(width: 70, height: 23, alignment: .center )
                            Picker("대분류",selection: $selectedCategory1) {
                                ForEach(0 ..< category1.count, id: \.self) { index in
                                    Text(self.category1[index])
                                }
                            }
                    }
                } // VStack
                
             
                if selectedCategory1 > 0 {
//                    Picker("대분류",selection: $selectedCategory1) {
//                        ForEach(0 ..< afterCategory1.count, id: \.self) { index in
//                            Text(afterCategory1[index])
//                        }
//                    }
                    let middleCategory: [String] = category2[category1[selectedCategory1]]!
                    ZStack{
                        RoundedRectangle(cornerRadius: 13)
                            .fill(Color(hue: 0.179, saturation: 0.031, brightness: 0.92))
                            .frame(width: 70, height: 23, alignment: .center )
                        Picker(selection: $selectedCategory2, label: Text("중분류")) {
                            ForEach(0 ..< middleCategory.count, id: \.self) { index in
                                Text(middleCategory[index])
                            }
                        }
                    }
                } else {
                    ZStack{
                        RoundedRectangle(cornerRadius: 13)
                            .fill(Color(hue: 0.179, saturation: 0.031, brightness: 0.92))
                            .frame(width: 70, height: 23, alignment: .center )
                        Picker(selection: $temp, label: Text("없음")) {
                            Text("중분류 ▼")
                        }
                    }
                }
                Spacer()
            } // HStack
            .padding(.horizontal)
        
            
            
            
            let columns = [
                GridItem(.adaptive(minimum: 130))
            ]
            
            // 무언가가 선택됨
            if selectedCategory1 > 0{
                let result = teaData.filter{ (data: TeaData) -> Bool in
                    return data.category1 == category1[selectedCategory1] && data.category2 == category2[category1[selectedCategory1]]![selectedCategory2]
                }
                ScrollView {
                   LazyVGrid(columns: columns,  spacing: 20) {
                       ForEach(result, id: \.self.id) {i in
                        //VStack으로 도형추가
                           ZStack{
                               RoundedRectangle(cornerRadius: 20)
                                   .fill(.white)
                                   .shadow(color: .gray, radius: 3, x: 4, y: 4)
                               VStack {
                                   Image(i.picture_code)
                                      .resizable()
                                      .aspectRatio(contentMode: .fill)
                                   VStack{
                                       HStack{
                                           Spacer()
                                           Text(i.name)
                                       }
                                       HStack{
                                           Button(action: {
                                               self.showingSheet.toggle()
                                               print("[Button action] \(i)" )
                                           }, label: {Text("+")})
                                           .sheet(isPresented: $showingSheet) {
                                               Detail(name: i.name)
                                           } // button
                                           Spacer()
                                           Text("Tea")
                                               .foregroundColor(.secondary)
                                       }
                                   }
                               }
                               .padding()
                           } // ZStack
                       } // ForEach
                   } // LazyVGrid
                   .padding(.horizontal)
                } // ScrollView
            }else{ // 아무거도 선택되지 않음
                ScrollView {
                   LazyVGrid(columns: columns,  spacing: 20) {
                       ForEach(teaData, id: \.self.id) {i in
                        //VStack으로 도형추가
                           ZStack{
                               RoundedRectangle(cornerRadius: 20)
                                   .fill(.white)
                                   .shadow(color: .gray, radius: 3, x: 4, y: 4)
                               VStack {
                                   Image(i.picture_code)
                                      .resizable()
                                      .aspectRatio(contentMode: .fill)
                                   VStack{
                                       HStack{
                                           Spacer()
                                           Text(i.name)
                                       } // HStack
                                       HStack{
                                           Button(action: {
                                               print("[Button action] \(i)" )
                                               self.showingSheet.toggle()
                                           }, label: {Text("+")})
                                           .sheet(isPresented: $showingSheet) {      
                                               Detail(name: i.name)
                                           }// button
                                           Spacer()
                                           Text("Tea")
                                               .foregroundColor(.secondary)
                                       } // HStack
                                   } // VStack
                               } // VStack
                               .padding()
                           }
                       } // ForEach
                   } // LazyVGrid
                   .padding(.horizontal)
                } // ScrollView
            } // else
            Spacer()
        }
    } // body
} // struct





struct TeaDictionary_Previews: PreviewProvider {
    static var previews: some View {
        TeaDictionary(teaData: TeaData.sampleData)
    }
}


