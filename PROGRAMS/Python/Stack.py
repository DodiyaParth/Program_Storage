from linked_list import *

class Stack:
    def __init__(self):
        self.L=LinkedList()
        self.size=0

    def push(self,val):
        if self.size>=5:
            print("Stack Overflow!")
            return
        self.L.insert(val,self.L.head)
        self.size+=1
        return val

    def pop(self):
        if self.size==0:
            print("Stack Underflow!")
            return
        m=self.L.head.next.value
        self.L.delete(self.L.head)
        self.size-=1
        return m

    def display(self):
        self.L.printlst()

class Queue:
    def __init__(self):
        self.L=LinkedList()
        self.size=0

    def enqueue(self,val):
        self.L.insertAtIndex(val, self.size)
        self.size+=1
        return val

    def dequeue(self):
        m=self.L.head.next.value
        self.L.delete(self.L.head)
        self.size-=1
        return m

    def display(self):
        self.L.printlst()

def main():
    S=Queue()
    S.enqueue(1)
    S.enqueue(2)
    S.enqueue(3)
    S.enqueue(4)
    S.enqueue(5)
    S.enqueue(6)
    S.display()
    S.dequeue()
    S.dequeue()
    S.display()
    
if __name__=="__main__":
    main()
