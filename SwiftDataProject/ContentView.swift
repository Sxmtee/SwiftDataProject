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
    @State private var showingUpcomingOnly = false
    
    @State private var sortOrder = [
        SortDescriptor(\User.name),
        SortDescriptor(\User.joinDate),
    ]
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
            UsersView(
                minimumJoinDate: showingUpcomingOnly ? .now : .distantPast,
                sortOrder: sortOrder
            )
            .navigationTitle("Users")
            .toolbar {
                Button("Add User", systemImage: "plus") {
//                    let user = User(name: "", city: "", joinDate: .now)
//                    modelContext.insert(user)
//                    path = [user]
                }
                
                Button(showingUpcomingOnly ? "Show Everyone" : "Show Upcoming") {
                    showingUpcomingOnly.toggle()
                }
                
                
                Menu("Sort", systemImage: "arrow.up.arrow.down") {
                    Picker("Sort", selection: $sortOrder) {
                        Text("Sort by Name")
                            .tag([
                                SortDescriptor(\User.name),
                                SortDescriptor(\User.joinDate),
                            ])

                        Text("Sort by Join Date")
                            .tag([
                                SortDescriptor(\User.joinDate),
                                SortDescriptor(\User.name)
                            ])
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
