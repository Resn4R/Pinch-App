//
//  ControlPanelView.swift
//  Pinch
//
//  Created by Vito Borghi on 04/01/2024.
//

import SwiftUI

struct ControlPanelView: View {
    
    @Binding var scale: CGFloat
    @Binding var offset: CGSize
    
    var body: some View {
        HStack {
            Section {
                
                Button {
                    guard scale > 1 else { return }
                    withAnimation(.spring()) {
                        scale -= 1
                    }
                } label: {
                    Image(systemName: "minus.magnifyingglass")
                }
                
                Button {
                    withAnimation(.spring()) {
                        scale = 1
                        offset = .zero
                    }
                } label: {
                    Image(systemName: "arrow.up.left.and.down.right.magnifyingglass")
                }
                
                Button {
                    guard scale < 5 else { return }
                    
                    withAnimation(.spring()) {
                        scale += 1
                    }
                } label: {
                    Image(systemName: "plus.magnifyingglass")
                }
            }
            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
        }
        .font(.largeTitle)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

//#Preview {
//   @State var scale: CGFloat = 1
//    ControlPanelView(scale: $scale)
//        .preferredColorScheme(.dark)
//}
