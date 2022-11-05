//
//  StormViewerApp.swift
//  StormViewer
//
//  Created by Zaid Neurothrone on 2022-11-05.
//

import SwiftUI

@main
struct StormViewerApp: App {
  var body: some Scene {
    // Supports many windows
//    WindowGroup {
//      ContentView()
//        .onAppear {
//          NSWindow.allowsAutomaticWindowTabbing = false
//        }
//    }
    
    // The app will exit when the window is closed
    Window("Storm Viewer", id: "main") {
      ContentView()
        .onAppear {
          NSWindow.allowsAutomaticWindowTabbing = false
        }
    }
    .commands { // Effectively hides the menu items
      CommandGroup(replacing: .newItem, addition: {})
      CommandGroup(replacing: .undoRedo, addition: {})
      CommandGroup(replacing: .pasteboard, addition: {})
    }
  }
}
