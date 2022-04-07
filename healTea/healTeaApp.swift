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
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
