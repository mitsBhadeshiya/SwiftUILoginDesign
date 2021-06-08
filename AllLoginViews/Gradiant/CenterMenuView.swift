//
//  CenterMenuView.swift
//  AllLoginViews
//
//  Created by Mits on 13/03/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct CenterMenuView: View {
    
    @State var open1 = true
    
    var body: some View {
        
        ZStack {
            Button(action: {
                self.open1.toggle()
            }, label: {
                Image(systemName: "plus")
                    .rotationEffect(.degrees(open1 ? 45 : 0))
                    .foregroundColor(.white)
                    .font(.system(size: 38, weight: .bold))
                    .animation(.spring(response: 0.2, dampingFraction: 0.5 , blendDuration: 0))
            })
                .padding(24)
                .background(Color.pink)
                .mask(Circle())
                .shadow(color: .pink, radius: 10)
                .zIndex(10)
            
            SecondaryButton(open: $open1, icon: "bubble.left.fill", color: "Blue",  offsetY: -90)
            SecondaryButton(open: $open1, icon: "trash", color: "Blue", offsetX:  -60 ,  offsetY: -60 , delay: 0.0)
            SecondaryButton(open: $open1, icon: "pencil", color: "Blue", offsetX:  -90  , delay: 0.0)
            /*  SecondaryButton(open: $open1, icon: "trash", color: "Blue", offsetX:  -60 ,  offsetY: 60 , delay: 0.0)
             SecondaryButton(open: $open1, icon: "bubble.left.fill", color: "Blue",  offsetY: 90 , delay: 0.0)
             SecondaryButton(open: $open1, icon: "trash", color: "Blue", offsetX:  60 ,  offsetY: 60 , delay: 0.0)
             SecondaryButton(open: $open1, icon: "pencil", color: "Blue", offsetX:  90  , delay: 0.0)
             SecondaryButton(open: $open1, icon: "trash", color: "Blue", offsetX:  60 ,  offsetY: -60 , delay: 0.0) */
        }
    }
}

struct CenterMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CenterMenuView()
    }
}


struct SecondaryButton : View {
    
    @Binding var open : Bool
    
    var icon = "pencil"
    var color = "Blue"
    var offsetX = 0
    var offsetY = 0
    var delay = 0.0
    
    var body : some View {
        
        Button(action: {}, label: {
            Image(systemName: icon)
                .foregroundColor(.white)
                .font(.system(size: 16,  weight: .bold))
        })
            .padding()
            .background(Color(color))
            .mask(Circle())
            .offset(x: open ? CGFloat(offsetX) : 0 , y: open ? CGFloat(offsetY) : 0)
            .scaleEffect( open ? 1 : 0)
            .animation(Animation.spring(response: 0.2 , dampingFraction: 0.5 , blendDuration: 0).delay(delay))
        
    }
    
}
