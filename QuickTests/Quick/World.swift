//
//  World.swift
//  Quick
//
//  Created by Brian Ivan Gesiak on 6/5/14.
//  Copyright (c) 2014 Brian Ivan Gesiak. All rights reserved.
//

import Foundation

var specs: Dictionary<String, ExampleGroup> = [:]
var currentSpec: String?
var currentExampleGroup: ExampleGroup?

func rootExampleGroupForSpec(name: String) -> ExampleGroup {
    if let group = specs[name] {
        return group
    } else {
        let group = ExampleGroup("root example group")
        specs[name] = group
        return group
    }
}