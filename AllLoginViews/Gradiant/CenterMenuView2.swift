//
//  CenterMenuView2.swift
//  AllLoginViews
//
//  Created by Mits on 14/03/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct CenterMenuView2: View {
    
    @State var open2 = false
    
    var body: some View {
        
        ZStack {
            Button(action: {
                self.open2.toggle()
            }, label: {
                Image(systemName: "plus")
                    .rotationEffect(.degrees(open2 ? 45 : 0))
                    .foregroundColor(.white)
                    .font(.system(size: 38, weight: .bold))
                    .animation(.spring(response: 0.2, dampingFraction: 0.5 , blendDuration: 0))
            })
                .padding(24)
                .background(Color.green)
                .mask(Circle())
                .shadow(color: .green, radius: 10)
                .zIndex(10)
            
            SecondaryButton(open: $open2, icon: "bubble.left.fill", color: "Blue",  offsetY: -90)
            SecondaryButton(open: $open2, icon: "trash", color: "Blue", offsetX:  -60 ,  offsetY: -60 , delay: 0.0)
            SecondaryButton(open: $open2, icon: "pencil", color: "Blue", offsetX:  -90  , delay: 0.0)
            SecondaryButton(open: $open2, icon: "trash", color: "Blue", offsetX:  -60 ,  offsetY: 60 , delay: 0.0)
            SecondaryButton(open: $open2, icon: "bubble.left.fill", color: "Blue",  offsetY: 90 , delay: 0.0)
            SecondaryButton(open: $open2, icon: "trash", color: "Blue", offsetX:  60 ,  offsetY: 60 , delay: 0.0)
            SecondaryButton(open: $open2, icon: "pencil", color: "Blue", offsetX:  90  , delay: 0.0)
            SecondaryButton(open: $open2, icon: "trash", color: "Blue", offsetX:  60 ,  offsetY: -60 , delay: 0.0)
        }
        
    }
}

struct CenterMenuView2_Previews: PreviewProvider {
    static var previews: some View {
        CenterMenuView2()
    }
}
