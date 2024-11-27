//
//  CLI.swift
//  Interface
//
//  Created by 송현석 on 11/27/24.
//

enum ProgramStatus: Int32 {
    case SUCCESS
    case FAILILE
    case CRITICAL_FAILURE
}

public protocol CLIProgramSpecification {
    func run(_ arguments: [String]) async -> Int32
    
    func help()
    func listNetworks() -> [String]
    func isHost() -> Bool
    func availablePhysicalPorts() -> [IOPort]
    func connectedDevices() -> [MFNUDevice]
    func loadSettings()
    func loadNetworkPresets()
    func saveSettings()
    func saveNetworkPresets()
    func saveNetworkPreset(_ networkID: String)
    
    
    
    init ()
}
