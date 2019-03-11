#include <stdio.h>
#include <stdlib.h>
#include<string.h>
void main(){
FILE *f=fopen("All_Words.txt","r");
printf("Enter word to search in dictionary\n");

char key[40],i[30];
scanf("%[^\n]",key);
printf("%s %u",key,f);
while(1)
{
	printf("...\n");
	fscanf(f,"%[^\n]\n",i);
	printf("%s searching\n",i);
	if(i[0]==EOF){
		printf("Not Found");
		return;}
	else if(strcmp(i,key))
	{
		printf("Key found\n");
		return;
	}
	printf("\n100%%\n");
}
}
