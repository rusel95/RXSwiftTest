//
//  Helpers.swift
//  RXSwiftTest
//
//  Created by Ruslan Popesku on 5/1/18.
//  Copyright © 2018 rusel95. All rights reserved.
//

import Foundation

public func example(_ rxOperator: String, action: () -> ()) {
    print("\n--- Example of:", rxOperator, "---")
    action()
}
