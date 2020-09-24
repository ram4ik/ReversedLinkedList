//
//  LinkedList.swift
//  ReversedLinkedList
//
//  Created by ramil on 24.09.2020.
//

import Foundation

class LinkedList {
    
    var head: Node?
    
    func find(key: Int) -> Node? {
        var curr = head
        
        while curr != nil && curr!.data != key {
            curr = curr!.next
        }
        
        return curr
    }
    
    func delete(key: Int) -> Node? {
        if head == nil {
            return head
        }
        
        var curr = head
        var prev: Node?
        
        while curr != nil && curr!.data != key {
            prev = curr
            curr = curr!.next
        }
        
        if prev == nil {
            head = curr!.next
        } else {
            prev!.next = curr!.next
        }
        
        return curr
    }
    
    func insert(data: Int) {
        
        let newNode = Node(data: data)
        
        newNode.next = head
        head = newNode
    }
    
    func append(data: Int) {
        
        if head == nil {
            insert(data: data)
            return
        }
        
        var curr = head
        while curr!.next != nil {
            curr = curr!.next
        }
        
        let newNode = Node(data: data)
        curr!.next = newNode
    }
    
    func printList() {
        var curr = head
        while curr != nil {
            print(curr!.data)
            curr = curr!.next  
        }
    }
}
