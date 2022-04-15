//
//  Mypage2.swift
//  healTea
//
//  Created by Terry Koo on 2022/04/13.
//

import SwiftUI
import Foundation



struct Mypage2: View {
    @State var character: Bool = true
    @State var modify: Bool = false
    @AppStorage("MyMoney") private var myMoney = UserDefaults.standard.integer(forKey: "MyMoney")
    
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .strokeBorder(Color("MyGreen"), lineWidth: 3)
                            .frame(width: 140, height: 45)
                        
                        Button(action: {
                            character.toggle()
                            modify.toggle()
                    
                        }, label: {
                            Text("나의 캐릭터").foregroundColor(.black)
                        })      
                        // 나의 캐릭터
                    }
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .strokeBorder(Color("MyGreen"), lineWidth: 3)
                            .frame(width: 140, height: 45)
                        
                        Button(action: {
                            character.toggle()
                            modify.toggle()
                           
                        }, label: {
                            Text("정보수정").foregroundColor(.black)
                        })
                        
                        // 정보 수정
                    }
                    
                        

                        
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .shadow(color: .gray, radius: 3, x: 4, y: 4)
                        .padding(.all)
                        .frame(height: 300)
                    
                    //바뀌는 화면
        
                    
                    
                    if character {
                        userInfo()
                            .frame(width: 350, height: 250, alignment: .center)
                    } else {
                        if myMoney < 20 {
                            Image("bottle1-1")
                                .resizable()
                                .frame(width: 200, height: 250, alignment: .center)
                        } else if myMoney < 40 {
                            Image("bottle1-2")
                                .resizable()
                                .frame(width: 200, height: 250, alignment: .center)
                        } else if myMoney < 60 {
                            Image("bottle1-3")
                                .resizable()
                                .frame(width: 200, height: 250, alignment: .center)
                        } else {
                            Image("bottle1-4")
                                .resizable()
                                .frame(width: 200, height: 250, alignment: .center)
                        }
                        Text("Money : \(self.myMoney)")
                            .foregroundColor(.black)
                    }
                    
                    
                    
                    // 엘리스 끝
                    
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("MyGreen"))
                        .shadow(color: .gray, radius: 3, x: 4, y: 4)
                        .padding([.leading, .bottom, .trailing])
                        .frame(height: 300)
                    HStack{
                        VStack(alignment: .leading){
                            Text("티 선호도 조사결과")
                                .font(.title)
                                
                            Text("산뜻한 카모마일")
                            Text("")
                            Text("김승훈님은 약간의 카페인이")
                            Text("첨가된 음료가 어울려요")
                            
                            Spacer().frame(height:105)
                            
                            
                        }
                        .foregroundColor(Color.white)
                     
                        
                        VStack{
                            Image("tea_0")
                                .resizable()
                                .clipShape(Circle())
                                .shadow(radius: 3)
                                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                .frame(width: 100, height: 100)
                            
                            Spacer().frame(height:75)
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(.white, lineWidth: 2)
                                    .frame(width: 120, height: 45)
                                
                                
                                
                                NavigationLink(destination: Survey()) {
                                    Text("다시 조사하기").foregroundColor(.white)
                                }
                            }
                        
                        }
                    }
                }
                //Spacer().frame(height:130)
                
            }
            .navigationBarTitle("")
            .navigationBarHidden(true) 
        }
        
    }
}

struct Mypage2_Previews: PreviewProvider {
    static var previews: some View {
        Mypage2()
    }
}
