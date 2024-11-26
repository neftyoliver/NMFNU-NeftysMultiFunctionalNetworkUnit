//
//  ProgramSettings.swift
//  NeftysMFNU
//
//  Created by 송현석 on 11/26/24.
//

import Foundation

public let settingFileName: String = "settings.json"
public let defaultSettings: ProgramSettings = ProgramSettings()

public enum MathineKind: String, CaseIterable {
    case macOS
    case iOS
    case OTHER
    case UNKNOWN
}

public struct ProgramSettings {
    //default valus are in the literals
    
    var isCLI: Bool = false
    var isDebug: Bool = false
    var shouldNotSleep: Bool = true
    var machineKind: MathineKind = MathineKind.UNKNOWN
    
    public static func loadOrDefault() -> ProgramSettings {
        return do {
            
            let filePath = FileManager.default.currentDirectoryPath + "/" + settingFileName
            let temp = defaultSettings
            
            
        } catch let error {
            return defaultSettings
        }
    }
}
