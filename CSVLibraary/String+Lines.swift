//
//  String+Lines.swift
//  SwiftCSV
//
//  Created by Naoto Kaneko on 2/24/16.
//  Copyright © 2016 Naoto Kaneko. All rights reserved.
//

extension String {
    var firstLine: String {
        var index = startIndex
        let chars = self
        while index < endIndex && chars[index] != "\r\n" && chars[index] != "\n" && chars[index] != "\r" {
            index = self.index(after: index)
        }
        return  self.substring(to:index)
    }
}
