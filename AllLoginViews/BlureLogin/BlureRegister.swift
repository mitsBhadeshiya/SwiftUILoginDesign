//
//  BlureRegister.swift
//  AllLoginViews
//
//  Created by Ubrain_iOS2 on 18/03/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct BlureRegister: View {
    
    @State private var strEmailId:String = ""
    @State private var strPassword:String = ""
    @State private var strUserName:String = ""
    
    var body: some View {
       
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.COLOR_116_235_213,.COLOR_172_182_229]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            
            ZStack {
                VStack {
                    ZStack {
                        VStack {
                            Text("Sign In")
                                .foregroundColor(Color.COLOR_98_98_98)
                                .font(Font.system(size: 20))
                                .fontWeight(.bold)
                                .padding()
                            
                            HStack {
                                Image("user (1)")
                                    .padding(.leading,10)
                                ZStack (alignment: .leading){
                                    if strUserName.isEmpty {
                                        Text("Username").foregroundColor(Color.COLOR_155)
                                    }
                                    TextField("", text: $strUserName)
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.white)
                                        .keyboardType(.emailAddress)
                                }
                                .padding(15)
                                .padding(.leading,-5)
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .strokeBorder(Color(.white) , lineWidth: 0.5)
                                    .shadow(radius: 5))
                            .padding(.bottom,15)
                            
                            HStack {
                                Image("mail")
                                    .padding(.leading,10)
                                ZStack (alignment: .leading){
                                    if strEmailId.isEmpty {
                                        Text("Email").foregroundColor(Color.COLOR_155)
                                    }
                                    SecureField("" , text: $strEmailId)
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.white)
                                }
                                .padding(15)
                                .padding(.leading,-5)
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .strokeBorder(Color(.white) , lineWidth: 0.5)
                                    .shadow(radius: 5))
                            .padding(.bottom,15)
                            
                            HStack {
                                Image("lock")
                                    .padding(.leading,10)
                                ZStack (alignment: .leading){
                                    if strPassword.isEmpty {
                                        Text("Password").foregroundColor(Color.COLOR_155)
                                    }
                                    SecureField("" , text: $strPassword)
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(.white)
                                }
                                .padding(15)
                                .padding(.leading,-5)
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .strokeBorder(Color(.white) , lineWidth: 0.5)
                                    .shadow(radius: 5))
                            .padding(.bottom,15)
                            
                            Button(action: {print("Login Button tapped")}) {
                                Text("Register")
                                    .font(Font.system(size: 18))
                                    .foregroundColor(.white)
                                    .frame(width: UIScreen.main.bounds.width - 120, height: 50)
                                    .background(Color.COLOR_44_112_115)
                                    .cornerRadius(5.0)
                            }
                            .padding(.bottom,5)
                        }
                        .padding(30)
                    }
                    .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(.sRGB,red: (255/255.0),green: (255/255.0),blue: (255/255.0),opacity: 0.2)))
                }
                
                Button(action: {}) {
                    Image("user")
                }
                .frame(width: 75, height: 75)
                .background(Color.COLOR_44_112_115)
                .clipShape(Circle())
                .accentColor(.white)
                .padding(.top,-240)
            }
            .frame(width: UIScreen.main.bounds.width - 80, height: 450, alignment: .center)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct BlureRegister_Previews: PreviewProvider {
    static var previews: some View {
        BlureRegister()
    }
}
