//
//  ContentView.swift
//  BallsInSwiftUI
//

//  Copyright © 2020 ayanemay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    struct SwiftUISpriteKit: UIViewControllerRepresentable{
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ContentView.SwiftUISpriteKit>) -> UIViewController {
            return GameViewController()
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ContentView.SwiftUISpriteKit>) {
        }
        
        typealias UIViewControllerType = UIViewController
        
    }
    
    var body: some View{
        SwiftUISpriteKit()
    }
    
}
