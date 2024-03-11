//
//  SwiftUIView.swift
//  Devices
//
//  Created by admin on 8/3/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var deviceManager = DeviceManager()
    @State private var Name = ""
    @State private var Description = ""
    @State private var facilitatorName = ""
    @State private var Status = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Device", text: $Name)
                TextField("Serial #", text: $Description)
                TextField("Status", text: $Status)
                Button("Add Device") {
                    deviceManager.addDevice(name: Name, description: Description, status: Status)
                    Name = ""
                    Description = ""
                    Status = ""
                }
            }
            Divider()
            DevicesListView(devices: deviceManager.devices)
            //BrokenDevicesView(brokenDevices: deviceManager.brokenDevices)
        }
        .padding()
    }
}


struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
 }
