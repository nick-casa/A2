/*--------------------------------------------------------------------*/
/* stra.c                                                             */
/* Author: Nickolas Casalinuovo                                       */
/*--------------------------------------------------------------------*/

#include <stdio.h>
#include <assert.h>
#include <stddef.h>
#include <stdlib.h>

#define STDLIB_INCLUDED
#include "str.h"

/*--------------------------------------------------------------------*/
/* Function definitions */
/*--------------------------------------------------------------------*/


size_t Str_getLength(const char iSrc[]){
   size_t uLength;
   int i;

   assert(iSrc != NULL);
   
   uLength = 0;
   for(i=0;iSrc[i]!='\0';i++)
   	 uLength++;
   return uLength;
}

char *Str_copy(char dest[], const char iSrc[]){
   int i;

   assert(iSrc != NULL);
   assert(dest != NULL);
   for(i=0;iSrc[i]!='\0';i++)
     dest[i] = iSrc[i];
   dest[i]='\0';
   
   return &dest[0];
}

char *Str_concat(char dest[], const char iSrc[]){
   int lenDest;
   int i;

   assert(dest != NULL);
   assert(iSrc != NULL);

   lenDest = (int)Str_getLength(dest);
   for(i = 0;iSrc[i]!='\0';i++){	  
   	  dest[i+lenDest]=iSrc[i];
   }
   dest[i+lenDest]='\0';
   return &dest[0];
}

int Str_compare(const char compA[], const char compB[]){
	int i;
	int compare;

	assert(compA != NULL);
	assert(compB != NULL);

	compare=0;
	for(i=0;(compA[i]!='\0' && compB[i]!='\0');i++){
		if(compA[i]<compB[i]){
			compare--;
			break;
		}
		else if(compA[i]>compB[i]){
			compare++;
			break;
		}
	}
	if(compA[i]<compB[i])compare--;
	else if(compA[i]>compB[i])compare++;
	 
	return compare;	
}

char* Str_search(const char haystack[], const char needle[]){
	int i,j;
	int match;
	
	assert(haystack != NULL);
	assert(needle != NULL);
	
	/* Initially the items do not match */
	match=0;
	/* Check if needle is empty */
	if(Str_getLength(needle)==0)return (char*)&haystack[0];
	/* Iterate through haystack */
	for(i = 0; haystack[i]!='\0';i++){
		/* If a char in haystack is equal to the first */ 
		/* char in needle.. */
		if(haystack[i]==needle[0]){
			/* set match to 1 for a potential match */
			match=1;
			for(j=1; needle[j]!='\0';j++){
				/* check that the following characters are the */
				/* same as the chars in needle */
				if(haystack[i+j]!=needle[j]) match=0;	
			}
			/*if there is still a match, needle was found */
			if(match==1) return (char*)&haystack[i];
		}
	}
	return NULL;
}

/*
int main(void){
	char dest[] = {'a','b','c'};
	const char iSrc[] = {'c','d'};
	printf("%lu\n ",Str_getLength(dest));
   
	printf("%lu\n ",(sizeof(char)*Str_getLength(dest)));
   	printf("%lu\n ",Str_getLength(iSrc));
   	printf("%lu\n ",(sizeof(char)*Str_getLength(iSrc)));
   
	printf("%lu\n ",(sizeof(char)*Str_getLength(dest)+sizeof(char)*Str_getLength(iSrc)));
   

}
*/
