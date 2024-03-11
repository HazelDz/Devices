//
//  DevicesApp.swift
//  Devices
//
//  Created by admin on 7/3/2024.
//

import SwiftUI

@main
struct DevicesApp: App {
    //let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
