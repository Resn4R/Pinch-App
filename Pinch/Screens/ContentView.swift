//
//  ContentView.swift
//  Pinch
//
//  Created by Vito Borghi on 01/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    @State private var imageScale: CGFloat = 1
    var body: some View {
        NavigationStack{
            ZStack{
                //MARK: PAGE IMAGE
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0) 
                    .scaleEffect(imageScale)
                //MARK: TAP GESTURE
                    .onTapGesture(count: 2) {
                        if imageScale == 1 {
                            withAnimation(.spring()){
                                imageScale = 5
                            }
                        } else {
                            withAnimation(.spring()){
                                imageScale = 1
                            }
                        }
                    }
            }//:ZSTACK
            .onAppear {
                withAnimation(.linear(duration: 1)){
                    isAnimating = true
                }
            }
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
        }//:Navigation
    }
}

#Preview {
    ContentView()
}
