//
//  MemoAppApp.swift
//  MemoApp
//
//  Created by devhaute on 2021/10/22.
//

import SwiftUI

@main
struct MemoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
