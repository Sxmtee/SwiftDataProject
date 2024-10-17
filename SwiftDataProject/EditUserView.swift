//
//  EditUserView.swift
//  SwiftDataProject
//
//  Created by mac on 16/10/2024.
//

import SwiftUI

struct EditUserView: View {
    @Bindable var user: User
    
    var body: some View {
        Form {
            TextField("Name", text: $user.name)
            TextField("City", text: $user.city)
            
            DatePicker("Date", selection: $user.joinDate)
        }
        .navigationTitle("Edit User")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditUserView()
//}
