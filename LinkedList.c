#include<stdio.h>
#include<stdlib.h>
typedef struct Node
{
	int value;
	struct Node* next;	
}node;
struct Node* createNode(int val,node* nxt)
{
	node m;
	m.value=val;
	m.next=nxt;
	return &m;
}
void insertNode(int val,node* pre)
{
	node *k=createNode(val,pre->next);
	pre=k;
}
void display(node head)
{
	node p=head;
	while(p.next!=NULL)
	{
		printf("%d->",p.next->value);
		p=*p.next;
	}
}
void main()
{
	node head={0,NULL};
	printf("%d %u\n",head.value,head.next);
	insertNode(5,&head.next);
	insertNode(6,&head.next);
	display(head);
}
