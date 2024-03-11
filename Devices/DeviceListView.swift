//
//  DeviceListView.swift
//  Devices
//
//  Created by admin on 7/3/2024.
//

import SwiftUI


struct DevicesListView: View {
    var devices: [Device]
   
    
    var body: some View {
       
        VStack(alignment: .leading) {
            Text("Devices")
            .font(.title)
            List(devices, id: \.name) { device in
                Text("\(device.name) - \(device.description) - \(device.status)")
                
            }
            /*if device.status.text == "Broken" {
                var body: some view{
                    VStack{
                        
                    }
                }
                
            }*/
        }
        
    }
    
}
