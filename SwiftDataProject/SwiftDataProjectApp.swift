//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by mac on 15/10/2024.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
