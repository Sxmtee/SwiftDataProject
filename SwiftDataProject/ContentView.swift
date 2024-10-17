//
//  ContentView.swift
//  SwiftDataProject
//
//  Created by mac on 15/10/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @State private var showingUpcominOnly = false
//    @Query(
//        filter: #Predicate<User> { user in
//            if user.name.localizedStandardContains("R") {
//                if user.city == "London" {
//                    return true
//                } else {
//                    return false
//                }
//            } else {
//                return false
//            }
//        },
//        sort: \User.name
//    ) var users: [User]
//    @State private var path = [User]()
    
    var body: some View {
        NavigationStack {
            UsersView(minimumJoinDate: showingUpcominOnly ? .now : .distantPast)
            .navigationTitle("Users")
            .toolbar {
                Button("Add User", systemImage: "plus") {
//                    let user = User(name: "", city: "", joinDate: .now)
//                    modelContext.insert(user)
//                    path = [user]
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
