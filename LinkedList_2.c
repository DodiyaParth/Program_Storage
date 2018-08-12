#include<stdio.h>
#include<stdlib.h>

typedef struct node
{
	int value;
	struct node* next;
}node;

node* head;

node* createnode(int val,node* nxt)
{
	node* m=malloc(sizeof(node));
	m->value=val;
	m->next=nxt;
	return m;
}

void insert(int val)
{
	head=createnode(val,head);
}

void insertat(int val,int idx)
{
	node* p=head;
	int i;
	if(idx==1)
	{
		insert(val);
		return;
	}
	for(i=0;i<idx-2;i++)
	{
		if(p!=NULL)
			p=p->next;
		else
		{
			printf("Index is invalid\n");
			return;
		}
	}
	p->next=createnode(val,p->next);
}

void insertMultiple(int n,int a[])
{
	int i;
	for(i=0;i<n;i++)
	{
		insert(a[i]);
	}
}

void delete()
{
	head=head->next;
}

void deleteAt(int idx)
{
	if(idx==1)
	{
		delete();
		return;
	}
	node* p=head;
	int i;
	for(i=0;i<idx-2;i++)
	{
		if(p!=NULL)
			p=p->next;
		else
		{
			printf("Index is Invalid\n");
			return;
		}
	}
	p->next=p->next->next;
	return;
}

void display()
{
	node* p=head;
	while(p!=NULL)
	{
		printf("%d -> ",p->value);
		p=p->next;
	}
	printf("\n");
}

void main()
{
	int i=1;
	while(i!=0)
	{
		printf("1. insert \n2. insertAt\n3. insert Multiple\n4. delete\n5. deleteAt\n6. display\n0. exit\ni=");
		scanf("%d",&i);
		int v;
		if(i==1)
		{
			printf("Enter the value\n");
			scanf("%d",&v);
			insert(v);
		}
		else if(i==2)
		{
			int val,idx;
			printf("insert val and index\n");
			scanf("%d %d",&val,&idx);
			insertat(val,idx);
		}
		else if(i==3)
		{
			printf("Enter the size of inputs\n");
			int n;
			scanf("%d",&n);
			int *a=malloc(4*n);
			printf("Enter the inputs\n");
			int i;
			for(i=0;i<n;i++)
			{
				scanf("%d",&a[i]);
			}
			insertMultiple(n,a);
		}
		else if(i==4)
		{
			delete();
		}
		else if(i==5)
		{
			int idx;
			printf("insert index\n");
			scanf("%d",&idx);
			deleteAt(idx);
		}
		else if(i==6)
			display();
		else
			return;
		printf("\n");
	}
}
