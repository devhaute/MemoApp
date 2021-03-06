//
//  MemoAppApp.swift
//  MemoApp
//
//  Created by devhaute on 2021/10/22.
//

import SwiftUI

@main
struct MemoApp: App {
    let store = MemoStore()
    
    var body: some Scene {
        WindowGroup {
            MemoListScene()
                .environmentObject(store)
        }
    }
}
