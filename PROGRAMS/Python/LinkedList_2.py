class node:
    def __init__(self,val=None,nxt=None):
        self.value=val
        self.next=nxt


class LinkedList:
    def __init__(self):
        self.head=node()
    def insert(self,x,pre):
        m=node(x,pre.next)
        pre.next=m
    def display(self):
        p=self.head
        while(p.next!=None):
            print(p.next.value,end=" -> ")
            p=p.next
        print()
    def insertAt(self,x,i):
        p=self.head
        for i in range(i-1):
            if p.next!=None:
                p=p.next
            else:
                printf("Wrong index");
        self.insert(x,p)

def main():
    i=1
    L=LinkedList()
    while i!=3:
        print("Choose 1.insertAt 2.display 3.close")
        i=int(input())
        if i==1:
            k=int(input("Enter index  "))
            l=input("Enter data  ")
            L.insertAt(l,k)
        elif i==2:
            L.display()
        elif i==3:
            break
if __name__=='__main__':
    main()



            
