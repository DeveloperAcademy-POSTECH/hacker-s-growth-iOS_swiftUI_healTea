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
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: viewRouter)
        }
    }
}
