//
//  Shapes.swift
//  Bullseye
//
//  Created by A.M. Student on 1/26/21.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                //.fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                .strokeBorder(Color.blue, lineWidth: 20.0)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 20.0)
                .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            Capsule()
                .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            Ellipse()
                .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
    }
        .background(Color.green)
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
}
