//
//  Hardwares.swift
//  Interface
//
//  Created by 송현석 on 11/27/24.
//

public enum IOPysicalPort: String {
    case USB_A = "USB_A"
    case USB_B = "USB_B"
    case USB_C = "USB_C"
    case THUNDERBOLT = "THUNDERBOLT"
    case THUNDERBOLT_2 = "THUNDERBOLT_2"
    case THUNDERBOLT_3 = "THUNDERBOLT_3"
    case THUNDERBOLT_4 = "THUNDERBOLT_4"
    case THUNDERBOLT_5 = "THUNDERBOLT_5"
}

public enum IOProrocal: String {
    case USB2 = "USB2"
    case USB3 = "USB3"
    case USB3_1 = "USB3_1"
    case USB3_1_gen1 = "USB3_1_gen1"
    case USB3_1_gen2 = "USB3_1_gen2"
    case USB3_2 = "USB3_2"
    case USB3_2_gen1 = "USB3_2_gen1"
    case USB3_2_gen2 = "USB3_2_gen2"
    case USB4 = "USB4"
    case THUNDERBOLT = "THUNDERBOLT_1"
    case THUNDERBOLT_2 = "THUNDERBOLT_2"
    case THUNDERBOLT_3 = "THUNDERBOLT_3"
    case THUNDERBOLT_4 = "THUNDERBOLT_4"
    case THUNDERBOLT_5 = "THUNDERBOLT_5"
    case ETHERNET = "ETHERNET"
    case PCIe = "PCIe"
    case WIFI = "WIFI"
    case BLUETOOTH = "BLUETOOTH"
    case IPHONE_CONNECTED = "IPHONE_CONNECTED"
}

public protocol IOPort {
    var port: IOPysicalPort { get }
    var proto: IOProrocal { get }
    //var connectionMethod: NetworkMethod { get }
    var name: String { get }
    var description: String { get }
    
    init (port: IOPysicalPort, proto: IOProrocal)
}

public protocol IOMethod {
    var isOutput: Bool { get }
    var isInput: Bool { get }
    var name: String { get }
    var description: String { get }
}

public protocol PingPong {
    func ping()
    func whenPong(_ callback: @escaping (String) -> Void)
}

public protocol MFNUHardware {
    //Created from the native apple interface
    var name: String { get }
    var description: String { get }
}

public enum MFNUDeviceMode: String {
    case HOST = "HOST"
    case DEVICE = "DEVICE"
}

public protocol MFNUDevice { //incase host and devices both have MFNU
    var name: String { get }
    var deviceMode: MFNUDeviceMode { get }
    var ID: String { get }
    var description: String { get }
    var isConnected: Bool { get }
    var isMFNU: Bool { get }
}

