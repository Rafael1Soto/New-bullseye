//
//  RoundViews.swift
//  Bullseye
//
//  Created by A.M. Student on 1/27/21.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
    }
}

struct PreviewView: View {
    var body: some View{
        
        HStack(spacing: 200) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            
            RoundedImageViewStroked(systemName: "list.dash")
        }
    }
    
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
