//
//  HueController.swift
//  iLunetje
//
//  Created by Joseph Siu on 26/10/15.
//  Copyright © 2015 Jozef Siu. All rights reserved.
//


import Foundation

public var HueSDK = PHHueSDK()

public class HueController {
    
    public func HueSetup (){
        
        // Enable logging, usefull during development for debugging
        HueSDK.enableLogging(true)
        
        // Call startUpSDK which will initialize the SDK

        HueSDK.startUpSDK()
    }

}