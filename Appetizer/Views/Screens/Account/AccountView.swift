//
//  AccountView.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var vm = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section("personal info") {
                    TextField("First name", text: $vm.person.firstName)
                    TextField("Last name", text: $vm.person.lastName)
                    TextField("Email", text: $vm.person.email)
                        .textInputAutocapitalization(.never)
                        .keyboardType(.emailAddress)
                        .textContentType(.none)
                        .autocorrectionDisabled(true)
                    DatePicker("Your birthday", selection: $vm.person.birthDate, displayedComponents: .date)
                    Button {
                        vm.saveChange()
                    } label: {
                        Text("Save changes")
                    }
                }
                Section("Requests") {
                    Toggle("Extra napkins", isOn: $vm.person.extraNapkins)
                    Toggle("Frequent order", isOn: $vm.person.freqencyOrder)
                }
                
            }
            .alert(item: $vm.alert, content: { alert in
                Alert(title: alert.title, message: alert.description, dismissButton: alert.button)
            })
            .onAppear {
                vm.retrieving()
            }
            .tint(.brand)
            .navigationTitle("Account🤓")
        }
    }
}

#Preview {
    AccountView()
}
