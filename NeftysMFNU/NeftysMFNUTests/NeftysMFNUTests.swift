//
//  NeftysMFNUTests.swift
//  NeftysMFNUTests
//
//  Created by 송현석 on 11/26/24.
//

import Testing

@testable import NeftysMFNU

struct NeftysMFNUTests {

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }
    
    @Test
    func checkSettingsLoadOrDefault() async throws {
        let (settings, error) = ProgramSettings.loadOrDefault()
        #expect(error == .noProblem)
        #expect(settings.isCLI == false)
        #expect(settings.shouldNotSleep == true)
    }

}

