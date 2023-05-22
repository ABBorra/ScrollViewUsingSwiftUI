//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by AB_Borra on 5/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: true) {
                        
                        LazyHStack {
                            ForEach(0..<50) { index in
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.orange)
                                    .frame(width: 200
                                           ,height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }
                    }
                }
                
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
