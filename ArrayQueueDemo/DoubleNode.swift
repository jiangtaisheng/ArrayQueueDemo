//
//  DoubleNode.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/9.
//

import UIKit

class DoubleNode: NSObject {
    var data: Any? = nil
    var next: DoubleNode? = nil
    var pre: DoubleNode? = nil

    init(item: Any? = nil){
        super.init()
        data = item
    }
    override  var description: String {
        if let `data` = data, let it = data as? [String: Any] {
            return "id: \(it["id"]) name: \(it["name"]) country: \(it["country"])"
        }
       return "nil"
    }
}
