class node:
    def __init__(self,val=None,nxt=None):
        self.value=val
        self.next=nxt

class LinkedList:
    def __init__(self):
        self.head=node()

    def insert(self,val):
        if self.head.value==None:
            self.head=node(val)
        else:
            self.head=node(val,self.head)

    def display(self):
        p=self.head
        while p is not None:
            print(p.value,end=' ')
            p=p.next
        print()

def main():
    L=LinkedList()
    print(L.head.value)
    L.insert(1)
    L.insert(2)
    L.insert(3)
    L.insert(4)
    L.display()



if(__name__=="__main__"):
    main()
