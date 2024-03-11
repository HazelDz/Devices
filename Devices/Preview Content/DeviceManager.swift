//
//  DeviceManager.swift
//  Devices
//
//  Created by admin on 7/3/2024.
//

import SwiftUI

struct Device: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var status: String // Status: "Working", "Broken"
}

struct BrokenDevice: Identifiable {
    let id = UUID()
    var deviceName: String
    var facilitatorName: String
}



class DeviceManager: ObservableObject {
    @Published var devices = [Device]()
    @Published var brokenDevices = [BrokenDevice(deviceName: "", facilitatorName: "")]
    
    func addDevice(name: String, description: String, status: String) {
        let newDevice = Device(name: name, description: description, status: status)
        devices.append(newDevice)
    }

}

//Enhancements

/*func reportBrokenDevice(deviceName: String, facilitatorName: String) {
    let brokenDevice = BrokenDevice(deviceName: deviceName, facilitatorName: facilitatorName)
    brokenDevices.append(brokenDevice)
    //updateDeviceStatus(deviceName: deviceName, newStatus: "Broken")
}*/

/* func updateDeviceStatus(deviceName: String, newStatus: String) {
    guard let index = devices.firstIndex(where: { $0.name == deviceName }) else {
        print("Device not found")
        return
    }
    devices[index].status = newStatus
}*/
