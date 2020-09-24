//
//  ContentView.swift
//  ReversedLinkedList
//
//  Created by ramil on 24.09.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        /*
         Reversed a LInked list.
         
         Example:
         Input = 1 > 2 > 3 > 4 > 5
         Output = 5 > 4 > 3 > 2 > 1
         */
        
        Text("Hello, world!")
            .padding()
            .onAppear() {
                solution()
            }
    }
    
    var list = LinkedList()
    
    func solution() {
        list.append(data: 1)
        list.append(data: 2)
        list.append(data: 3)
        list.append(data: 4)
        list.printList()
        print("=============")
        
        reversedList()
        list.printList()
        
    }
    
    func reversedList() {
        var current = list.head
        var next: Node?
        var prev: Node?
        
        while current != nil {
            next = current?.next
            current!.next = prev
            prev = current
            current = next
        }
        
        list.head = prev
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
