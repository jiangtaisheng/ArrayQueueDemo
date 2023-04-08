//
//  SingleLinkedList.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/7.
//

import UIKit

class SingleLinkedList: NSObject {
    
    private var head: Node = Node.init(item: nil)
    // 获取头节点
    func getHead() -> Node{
        return head
    }
    //添加节点
    func addNode(node: Node){
        var tempNode: Node = head
        while(tempNode.next != nil) {
            tempNode = tempNode.next!
        }
        tempNode.next = node
    }
    
    //顺序添加节点
    func addSequenceNode(node: Node){
        var tempNode: Node = head
        var  flag = false  //标识找到一样的节点
        // 思路是找到合适的位置，即 tempNode 指向合适的节点
        while(true) {
            if tempNode.next == nil {
                break
            }
            let id =  (node.data as![String: Any])["id"] as! Int
            let nextId =  (tempNode.next!.data as![String: Any])["id"] as! Int
            if nextId > id {
                break
            }else if (nextId == id) {
                flag = true
                break
            }else {
                tempNode =  tempNode.next!
            }
        }
        if flag == true {
            print("找到一样的节点")
        }else {
            node.next = tempNode.next
            tempNode.next = node
        }
    }

    //删除节点
    func deleteNode(node: Node){
        var  tempNode: Node? = head.next
        var  flag = false  //标识找到一样的节点
        // 思路找到要删除节点的前一个节点
        while(true) {
            if tempNode == nil {
                break
            }
            let id =  (node.data as![String: Any])["id"] as! Int
            let nextId =  (tempNode!.next!.data as![String: Any])["id"] as! Int
            if id == nextId {
                flag = true
                break
            }else {
                tempNode = tempNode!.next
            }
        }
        if flag == true {
            let deleteNode =  tempNode!.next!
            tempNode?.next = deleteNode.next!
        }else {
            print("没找到应该删除的节点")
        }
        
    }
    
    //更新节点
    func updateNode(node: Node){
        var  tempNode: Node? = head.next
        var  flag = false  //标识找到一样的节点
        // 思路找到要更新的节点
        while(true) {
            if tempNode == nil {
                break
            }
            let id =  (node.data as![String: Any])["id"] as! Int
            let nextId =  (tempNode!.data as![String: Any])["id"] as! Int
            if id == nextId {
                flag = true
                break
            }else {
                tempNode = tempNode!.next
            }
        }
        
        if flag == true {
            tempNode?.data =  node.data
        }else {
            print("没找到应该更新的节点")
        }
    }
   
    // 显示链表
    
    func showList() {
        var tempNode: Node = head
        while( tempNode.next != nil ) {
            tempNode = tempNode.next!
            print(tempNode)
        }
    }
    
   
}

class Node: NSObject {
    var data: Any? = nil
    var next: Node? = nil
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
