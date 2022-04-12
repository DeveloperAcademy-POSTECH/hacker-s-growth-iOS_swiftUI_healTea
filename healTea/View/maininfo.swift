//
//  maininfo.swift
//  healTea
//
//  Created by 김승훈 on 2022/04/12.
//

import SwiftUI

struct maininfo: View {
  var body: some View {
      ZStack{
          
              
              
        
            Circle()
                .fill(Color.black)
            .frame(width: 50, height: 50)
            .offset(x:-130)
            .offset(y:-360)
          
            
            Circle()
                .fill(Color.black)
            .frame(width: 50, height: 50)
            .offset(x:130)
            .offset(y:-360)
          
            
          
          
            Rectangle()
              
              .frame(width:389 , height: 550)
             
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.white)
                    .shadow(color: .red,
                            radius: 5, x: 20, y: 20)

                           
.offset(y:230)
                      
              
            }
                       
        }
}
    
        
        
       

        



struct maininfo_Previews: PreviewProvider {
    static var previews: some View {
        maininfo()
    }
}
