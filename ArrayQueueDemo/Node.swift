//
//  Node.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/9.
//

import UIKit

class Node: NSObject {
    var data: Any? = nil
    var next: Node? = nil
    init(item: Any? = nil, next: Node? = nil){
        super.init()
        self.data = item
        self.next = next
    }
    override  var description: String {
        if let `data` = data, let it = data as? [String: Any] {
            return "id: \(it["id"]) name: \(it["name"]) country: \(it["country"])"
        }
       return "nil"
    }
}

