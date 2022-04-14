//
//  Detail.swift
//  healTea
//
//  Created by Terry Koo on 2022/04/12.
//

import Foundation
import SwiftUI

struct Detail: View {
//    var id: UUID
    var name: String
    var teas: [TeaData]{
        TeaData.sampleData.filter{ (t: TeaData) -> Bool in
            print("[Detail] \(self.name) , \(t.name) => \(self.name == t.name)")
            return self.name == t.name
        }
    }
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    VStack{
//                        Text("자료 개수\(teas.count)")
                        Text(teas[0].name)
                            .font(.title)
                        Text(teas[0].en_name)
                        Text("")
                        
                        Text("\(teas[0].name)의 효능")
                    }// 차이름, 효능 타이틀
                    VStack{
                        Image(teas[0].picture_code)
                            .resizable()
                            .frame(width: 200 , height: 200)
                    } // 차사진
                }
                
                HStack{
                    ForEach(teas[0].good_name, id: \.self){ t in
                        Text(t)
                    }
                } // 효능
                
                HStack{
                    Text("")
                    Text("테이스팅 노트")
                        .font(.title)
                } // 테이스팅 노트
                HStack{
                    ForEach(teas[0].tasting_note, id: \.self){ t in
                        Text(t)
                    }
                } // 테이스팅 노트 이미지
                VStack{
                    Text("이런사람들 한테 좋아요")
                        .font(.title)
                    ForEach(teas[0].good_context, id: \.self){ t in
                        Text(t)
                    }
                    Text("이런사람들 한테 나빠요")
                        .font(.title)
                    ForEach(teas[0].bad_context, id: \.self){ t in
                        Text(t)
                    }
                }
            }
        }
  }
}



struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(name: TeaData.sampleData[0].name)
    }
}
