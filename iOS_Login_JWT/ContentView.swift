//
//  ContentView.swift
//  iOS_Login_JWT
//
//  Created by Ramya Ramzz on 2/21/24.
//

import SwiftUI

struct ContentView: View {
        
    @StateObject private var loginVM = LoginViewModel()
   
    var body: some View {
        VStack {
            Form {
                HStack {
                    Spacer()
                    Image(systemName: loginVM.isAuthenticated ? "lock.fill": "lock.open")
                }
                TextField("Username", text: $loginVM.username)
                SecureField("Password", text: $loginVM.password)
                HStack {
                    Spacer()
                    Button("Login") {
                        loginVM.login()
                    }
                    Button("Signout") {
                        loginVM.signout()
                    }
                    Spacer()
                }
            }.buttonStyle(PlainButtonStyle())
            
           
        } .onAppear(perform: {
           
        })
        .navigationTitle("Login")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
