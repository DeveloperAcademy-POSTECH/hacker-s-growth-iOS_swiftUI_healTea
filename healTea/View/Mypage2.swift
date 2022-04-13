//
//  Mypage2.swift
//  healTea
//
//  Created by Terry Koo on 2022/04/13.
//

import SwiftUI
import Foundation

struct Mypage2: View {
    @State var cha: Bool = true
    @State var modify: Bool = false
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .strokeBorder(Color("MyGreen"), lineWidth: 3)
                            .frame(width: 140, height: 45)
                        
                        Button(action: {
                            cha.toggle()
                            modify.toggle()
                        }, label: {
                            Text("나의 케릭터")
                        })
                        
                        // 나의 캐릭터
                    }
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .strokeBorder(Color("MyGreen"), lineWidth: 3)
                            .frame(width: 140, height: 45)
                        
                        Button(action: {
                            cha.toggle()
                            modify.toggle()
                        }, label: {
                            Text("정보수정")
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
                    // 엘리스 시작
                    
                    
                    
                    
                    
                    
                    
                    
                    
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
