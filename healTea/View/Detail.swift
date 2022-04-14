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
            return self.name == t.name
        }
    }
    
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading){
                
                //상단 차 이름. 사진
                HStack{
                    VStack(alignment: .leading){
                        Spacer()
                        Text(teas[0].name)
                            .font(.title)
                            .fontWeight(.bold)
                        Text(teas[0].en_name).font(.title2).fontWeight(.semibold)
                    }
                    .padding([.bottom, .trailing])
                    
                    HStack{
                        VStack(alignment: .trailing){
                            Image(teas[0].picture_code)
                                .resizable()
                                .padding()
                                .frame(width: 150 , height: 150)
                            
                            HStack {
                                VStack{
                                    Image(systemName: "timer")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .foregroundColor(Color.black)
                                        .frame(width: 20, height: 20)
                                    (Text(teas[0].time)+Text("m")).font(.subheadline)
                                }
                                
                                VStack {
                                    Image(systemName: "thermometer")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .foregroundColor(Color.red)
                                        .frame(width: 20, height: 20)
                                    (Text(teas[0].temperature) + Text("'C")).font(.subheadline)
                                    }
                            }
                            .padding(.leading)
                        }
                    }
                }

            //내용
            VStack(alignment: .leading){
                
                //테이스팅 노트
                VStack(alignment: .leading){
                    Text("테이스팅 노트")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("DonationFont"))

                    HStack{
                        ForEach(teas[0].tasting_note, id: \.self){ t in
                            Text(t)
                                .font(.headline)
                                .fontWeight(.regular)
                                .kerning(2)
                        }
                    }
                }.padding([.top, .leading, .bottom])
                
                //Good
                VStack(alignment: .leading){
                    //찰떡궁합
                    HStack {
                        Text("찰떡궁합")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("DonationFont"))
                        HStack{
                            ForEach(teas[0].good_name, id:\.self) { t in
                                Text(t)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                    .kerning(1)
                            }
                        }
                    }
                    
                    // 이런사람에게 좋아요
                    Text("이런사람들 한테 좋아요")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(Color("DonationBar_2"))
                        .padding(.bottom, 1)
                    
                    ForEach(teas[0].good_context, id: \.self){ t in
                        (Text("• ")+Text(t))
                            .font(.body)
                            .padding(.leading)
                            .padding(.bottom, 0.2)
                    }
                    
                }.padding([.top, .leading, .bottom])
                    
                //Bad
                VStack(alignment: .leading){
                    // 주의요망
                    HStack{
                        Text("주의요망").font(.title2).fontWeight(.semibold).foregroundColor(Color("DonationFont"))
                        HStack{
                            ForEach(teas[0].bad_name, id:\.self) { t in
                                Text(t)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                    .kerning(1)
                            }
                        }
                    }
                    
                    // 이런사람에게 나빠요
                    Text("이런사람들 한테 나빠요")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(Color("DonationBar_2"))
                        .padding(.bottom, 1.0)
                    ForEach(teas[0].bad_context, id: \.self){ t in
                        (Text("• ")+Text(t))
                            .font(.body)
                            .padding(.leading)
                            .padding(.bottom, 0.2)
                    }
                    
                }.padding([.top, .leading, .bottom])
                
                
            } //~내용
            
            }.padding() //
        } //~var
    } //~struct
}



struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(name: TeaData.sampleData[0].name)
            .padding(0.0)
    }
}
