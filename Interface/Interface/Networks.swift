//
//  Networks.swift
//  Interface
//
//  Created by 송현석 on 11/27/24.
//

public protocol UseInterConnection { //Networks can share data througe internal lines.
    
}

public protocol IPv4Address {
    var address: UInt32 { get }
}

public protocol IPv6Address {
    var address: UInt64 { get }
}

public protocol InternetLine {
    
}

public protocol Network {
    var useInterConnection: UseInterConnection { get }
    var actived: Bool { get }
    var inputMethods: [IOMethod] { get }
    var outputMethods: [IOMethod] { get }
    var isInternetConnected: Bool { get }
    var internetLine: InternetLine? { get }
    var connectedDevices: [MFNUDevice] { get }
    var ID: String { get }
    
    
    
    func activate()
    func deactivate()
    func kick(ID: String)
    func uploadHTTP()
}

