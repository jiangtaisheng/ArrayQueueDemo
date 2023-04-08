//
//  Stack.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/8.
//

/**
 栈
 **/

import UIKit

class Stack {

    fileprivate var array: [Any] = [] // 数据存储容器
    var  isEmpty: Bool { // 判断是否是空栈
        return array.count == 0
    }
    var  count: Int { // 查看栈的有效元素
        return array.count
    }
    var  peek: Any? { // 查看栈的顶层元素
        if array.count > 0 {
            return array.last
        }
       return nil
    }
    
    //入栈
    func push(_ element: Any) {
       array.append(element)
    }
    // 出栈
    func pop() -> Any? {
        return array.popLast()
    }
    
    // 删除数组最后一个元素 并返回这个元素
    private  func popLast() -> Any? {
        if array.count > 0 {
            let lastObj = array.last
            array.remove(at: array.count-1)
            return lastObj
        }
        return nil
    }
    
}
