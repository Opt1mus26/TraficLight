//
//  ChangeColorButton.swift
//  TraficLight
//
//  Created by Pavel Tsyganov on 24.01.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 4)
                )
                .background(.blue)
        }
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {})
    }
}
