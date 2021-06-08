//
//  LoginViewOne.swift
//  AllLoginViews
//
//  Created by Mits on 04/03/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct LoginViewOne: View {
    
    @State private var strEmailId:String = ""
    @State private var strPassword:String = ""
    
    @State private var isLoading:Bool = false
    
    var body: some View {
        
        NavigationView() {
            
            ZStack {
                
                VStack{
                    Spacer()
                    Text("Login")
                        .font(Font.system(size: 25))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                    Spacer()
                    ZStack {
                        if strEmailId.isEmpty {
                            Text("Your Email").foregroundColor(.white)
                        }
                        TextField("", text: $strEmailId)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .keyboardType(.emailAddress)
                            .padding(12)
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .strokeBorder(Color(.white) , lineWidth: 0.5)
                                    .shadow(radius: 5))
                    }
                    ZStack {
                        if strPassword.isEmpty {
                            Text("Password").foregroundColor(.white)
                        }
                        SecureField("" , text: $strPassword)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding(12)
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .strokeBorder(Color(.white) , lineWidth: 0.5)
                                    .shadow(radius: 5))
                    }
                    
                    Button(action: {
                        
                        self.isLoading = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            self.hideLoading()
                        }
                        
                    }, label: {
                        HStack {
                            Text("Login")
                            
                            if self.isLoading {
                                ActivityIndicator(isAnimating: .constant(true), style: .medium)
                                    .colorMultiply(.white)
                            }
                            
                        }
                        .frame(minWidth: 0, maxWidth: 150)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(40)
                        .foregroundColor(Color.gray)
                        .font(.body)
                    })
                    
                    Spacer()
                    
                    NavigationLink(destination: RegisterViewController()) {
                        Text("New User?")
                            .foregroundColor(.white)
                    }
                    Spacer()
                }.padding()
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color("colorBlue1"), Color("colorBlue2")]), startPoint: .top, endPoint: .bottom))
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    
    func hideLoading()
    {
        isLoading = false
    }

}

struct ActivityIndicator: UIViewRepresentable {

    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}


struct textStyles : ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.white)
            .cornerRadius(20)
    }
    
}



struct LoginViewOne_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewOne()
    }
}
