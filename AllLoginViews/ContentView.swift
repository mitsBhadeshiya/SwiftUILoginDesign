//
//  ContentView.swift
//  AllLoginViews
//
//  Created by Mits on 26/02/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        
        NavigationView {
            VStack (alignment: .center, spacing: 10) {
                NavigationLink(destination: LoginViewOne()) {
                    Text("Simple Login View")
                }
                NavigationLink(destination: ZooLogin()) {
                    Text("Zoo Login")
                }
                NavigationLink(destination: BlureLogin()) {
                    Text("Blurred Login Form")
                }
                NavigationLink(destination: TransparentLogin()) {
                    Text("Transparent Login")
                }
            }
            .navigationBarTitle( Text("All Logins") , displayMode:.inline)
            //.navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
