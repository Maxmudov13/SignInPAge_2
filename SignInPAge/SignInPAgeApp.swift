//
//  SignInPAgeApp.swift
//  SignInPAge
//
//  Created by user on 14/01/22.
//

import SwiftUI

@main
struct SignInPAgeApp: App {
    var body: some Scene {
        WindowGroup {
            StartCenter().environmentObject(Status())
        }
    }
}
