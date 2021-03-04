/*--------------------------------------------------------------------*/
/* strp.c                                                             */
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


size_t Str_getLength(const char *iSrc){
   size_t uLength;
   assert(iSrc != NULL);
   
   uLength = 0;
   while(*iSrc!='\0'){
   	 uLength++;
   	 iSrc++;
   }
   return uLength;
}

char *Str_copy(char *dest, const char *iSrc){
   char *fDest;
   
   assert(iSrc != NULL);
   assert(dest != NULL);
   
   fDest=dest;

   /* Sets Dest value */
   while(*iSrc != '\0'){
   	 *fDest = *iSrc;
   	 fDest++;
   	 iSrc++;
   }
   *fDest = '\0';

   return dest;
}

char *Str_concat(char *dest, const char *iSrc){
   char *fDest;
   assert(iSrc != NULL);
   assert(dest != NULL);
		   
   fDest=dest;
   /* Gets to end of follow Dest */
   while(*fDest != '\0')
   	 fDest++;
   /* Sets follow Dest value */
   while(*iSrc != '\0'){
   	 *fDest = *iSrc;
   	 fDest++;
   	 iSrc++;
   }
   *fDest = '\0';

   return dest;
}

int Str_compare(const char *compA, const char *compB){
	int compare;

	assert(compA != NULL);
	assert(compB != NULL);

	compare=0;
	while(*compA!='\0' && *compB!='\0'){
		if(*compA<*compB){
			compare--;
			break;
		}
		else if(*compA>*compB){
			compare++;
			break;
		}
		compA++;
		compB++;
	}
	if(*compA<*compB)compare--;
	else if(*compA>*compB)compare++;
	return compare;	
}

char* Str_search(const char *haystack, const char *needle){
   
	int match;
	char *fNeedle;
	int counter; 

	assert(haystack != NULL);
	assert(needle != NULL);

	
	fNeedle = (char*)needle;
	/* Initially the items do not match */
	match=0;
	/* Check if needle is empty */
	if(Str_getLength(needle)==0)return (char*)haystack;
	/* Iterate through haystack */
	while(*haystack!='\0'){
		/* If a char in haystack is equal to the first */
		/* char in needle.. */
		if(*haystack==*fNeedle){
			/* set match to 1 for a potential match */
			counter = 1;
			match=1;
			while(*needle!='\0'){
				/* check that the following characters are the */
				/* same as the chars in needle */
				if(*(haystack+counter)!=*fNeedle) match=0;	
				fNeedle++;
			}
			/* if there is still a match, needle was found */
			if(match==1) return (char*)haystack;
			else fNeedle = (char*)needle;
		}
		haystack++;
	}
	return NULL;
}



