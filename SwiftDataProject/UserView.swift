//
//  UserView.swift
//  SwiftDataProject
//
//  Created by mac on 16/10/2024.
//

import SwiftUI
import SwiftData

struct UsersView: View {
    @Query var users: [User]
    
    init(minimumJoinDate: Date) {
        _users = Query(filter: #Predicate<User> { user in
            user.joinDate >= minimumJoinDate
        }, sort: \User.name)
    }
    
    var body: some View {
        List(users) { user in
            Text(user.name)
        }
    }
}

#Preview {
    UsersView()
        .modelContainer(for: User.self)
}
