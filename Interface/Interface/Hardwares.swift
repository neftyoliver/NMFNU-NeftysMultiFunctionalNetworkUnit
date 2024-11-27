//
//  Hardwares.swift
//  Interface
//
//  Created by 송현석 on 11/27/24.
//

public protocol IOMethod {
    
}


public protocol MFNUHardware {
    //Created from the native apple interface
}

public enum MFNUDeviceMode: String {
    case HOST = "HOST"
    case DEVICE = "DEVICE"
}

public protocol MFNUDevice {
    var name: String { get }
    
}
