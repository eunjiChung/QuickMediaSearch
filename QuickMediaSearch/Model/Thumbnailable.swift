//
//  Thumbnailable.swift
//  QuickMediaSearch
//
//  Created by tyler on 2020/02/05.
//  Copyright © 2020 Assin. All rights reserved.
//

import Foundation

protocol Thumbnailable {
    var type: ThumbnailType { get }
    var thumbnail: String { get }
    var width: Int { get }
    var height: Int { get }
}
