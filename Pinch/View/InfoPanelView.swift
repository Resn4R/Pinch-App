//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Vito Borghi on 04/01/2024.
//

import SwiftUI

struct InfoPanelView: View {
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isVisible = false
    
    var body: some View {
        HStack {
            // MARK: HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1) {
                    withAnimation(.easeOut) {
                        isVisible.toggle()
                    }
                }
            
            Spacer()
            // MARK: INFO PANEL
            HStack(spacing: 2, content: {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                
                Spacer()
                
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                
                Spacer()
                
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
                
                Spacer()
            })
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .frame(maxWidth: 420)
            .opacity(isVisible ? 1 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    InfoPanelView(scale: 1.0, offset: .zero)
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
}
