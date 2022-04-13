
import SwiftUI

struct DonationDetail: View {

    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Text("기부처 정보")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(ColorManager.DonationFont)
                    
                    Spacer()
                }
                .padding(.horizontal, 35)
                
                VStack {
                    ZStack {
                        Box_4()
                        
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("GREEN PEACE")
                                        .font(.system(size: 20))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorManager.DonationList)
                                    
                                    Text("(그린피스)")
                                        .font(.system(size: 20))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorManager.DonationList)
                                }
                                
                                Spacer()
                                
                                Image("don_0")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 80, height: 80)
                                    .shadow(radius: 3)
                                
                                //Circle().frame(width: 80, height: 80)
                                //    .foregroundColor(Color("DonationBar_3"))
                            }
                            .padding(.horizontal, 70)
                            
                            Spacer()
                            
                            HStack {
                                Spacer()
                                
                                Text("핵실험 반대와 자연보호 운동 등을 통해 지구환경 보존을 위해 힘쓰는 국제 환경보호 단체")
                                    .font(.system(size: 13.5))
                                    .frame(width: 200, height: 50)
                                    .multilineTextAlignment(.trailing)
                                    .foregroundColor(ColorManager.DonationList)
                            }
                            .padding(.horizontal, 70)
                        }
                        .padding(.vertical, 30)
                    }
                }
                .padding(.top, 10)
            }
            
            VStack {
                ZStack {
                    Box_4()
                    
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("WWF")
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorManager.DonationList)
                                
                                Text("(세계자연기금)")
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorManager.DonationList)
                            }
                            
                            Spacer()
                            
                            Image("don_1")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .shadow(radius: 3)
                        }
                        .padding(.horizontal, 70)
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            
                            Text("생물의 다양성 보존과 환경오염 및 자원 낭비 방지 등을 통해 자연보호사업을 진행하는 세계 최대 민간자연보호 단체")
                                .font(.system(size: 13.5))
                                .frame(width: 210, height: 50)
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(ColorManager.DonationList)
                        }
                        .padding(.horizontal, 70)
                    }
                    .padding(.vertical, 30)
                }
            }
            .padding(.top, 20)
            
            VStack {
                ZStack {
                    Box_4()
                    
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("K-Green Foundation")
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorManager.DonationList)
                                
                                Text("(환경재단)")
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorManager.DonationList)
                            }
                            
                            Spacer()
                            
                            Image("don_2")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .shadow(radius: 3)
                        }
                        .padding(.horizontal, 70)
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            
                            Text("지속가능한 지구를 위해 정부, 기업, 시민사회와 함께하는 실천공동체")
                                .font(.system(size: 13.5))
                                .frame(width: 210, height: 50)
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(ColorManager.DonationList)
                        }
                        .padding(.horizontal, 70)
                    }
                    .padding(.vertical, 30)
                }
            }
            .padding(.top, 20)
        }
    }
}

struct Box_3: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 330, height: 250)
            .foregroundColor(ColorManager.DonationList)
    }
}

struct Box_4: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 330, height: 250)
            .foregroundColor(ColorManager.DonationList)
            .overlay(
                RoundedRectangle(cornerRadius: 10).frame(width: 320, height: 240)
                    .foregroundColor(.white)
            )
    }
}

struct DonationDetail_Previews: PreviewProvider {
    static var previews: some View {
        DonationDetail()
    }
}
