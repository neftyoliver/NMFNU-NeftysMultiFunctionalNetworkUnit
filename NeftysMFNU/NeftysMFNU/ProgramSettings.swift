//
//  ProgramSettings.swift
//  NeftysMFNU
//
//  Created by 송현석 on 11/26/24.
//

import Foundation

public let settingFileName: String = "settings.json"
public let defaultSettings: ProgramSettings = .init()

public enum FileError: Int32, Error {
    case noProblem = 0
    case noPermission = 1
    case notFound = 2
    case invalidFormat = 3
    case cannotWrite = 4
    case cannotRead = 5
    case notAFileError = 6
}


public struct ProgramSettings: Codable {
    //default valus are in the literals
    
    public var isCLI: Bool = false
    public var shouldNotSleep: Bool = true
    
    
    
    public static func loadOrDefault() -> (ProgramSettings, FileError) {
        let isFileExist = FileManager.default.fileExists(atPath: settingFileName)
        
        if !isFileExist {
            FileManager.default.createFile(atPath: settingFileName, contents: nil)
        }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: settingFileName))
            let settings = try JSONDecoder().decode(ProgramSettings.self, from: data)
            return (settings, .noProblem)
        } catch let error as FileError {
            
            print("Something went wrong: \(error). using default settings.")
            
            return (defaultSettings, error)
        } catch let error {
            print("Something went wrong: \(error). using default settings.")
            return (defaultSettings, FileError.notAFileError)
        }
        
    }
    
}




