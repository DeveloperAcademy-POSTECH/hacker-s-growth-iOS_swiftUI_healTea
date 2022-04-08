//
//  healTeaApp.swift
//  healTea
//
//  Created by Terry Koo on 2022/04/07.
//

import SwiftUI

@main
struct healTeaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
            TabView {
                Home()
                    .tabItem{
                        Image(systemName:"heart.circle.fill")
                        Text("home")
                    }
                                
                
                TeaDictionary(teaData: TeaDatas[1])
                    .tabItem{
                        Image(systemName:"doc.fill.badge.plus")
                        Text("Dic")
                    }
                
                Mypage()
                    .tabItem{
                        Image(systemName:"list.bullet.rectangle.portrait.fill")
                        Text("My")
                    }
                
                Camera()
                    .tabItem{
                        Image(systemName:"person.circle")
                        Text("Cam")
                    }
                
            }
        }
    }
    
}
