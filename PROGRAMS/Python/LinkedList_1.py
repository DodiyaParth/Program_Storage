class Node:
    def __init__(self,val=None,nxt=None):
        self.value=val
        self.next=nxt

class LinkedList:
    def __init__(self):
        self.head=Node()
        self.count=0

    def insert(self,val,index=None):
        if index==None:
            p=Node(val,self.head.next)
            self.head.next=p
        else:
            if index<1 or index>self.count+1:
                print("index is Invalid.")
            else:
                p=self.head
                for i in range(index-1):
                    p=p.next
                k=Node(val,p.next)
                p.next=k
        self.count+=1
            
    def printLL(self):
        p=self.head
        while p.next!=None:
            print(p.next.value,end=' ')
            p=p.next
        print()

    def size(self):
        print(self.count)
        return self.count
    

def main():
    L=LinkedList()
    L.insert(1)
    L.insert(2)
    L.insert(3)
    L.insert(4)
    L.insert(5,5)
    L.printLL()
    L.size()

main()
