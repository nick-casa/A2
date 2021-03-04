/*-------------------------------------------------------------------*/
/* str.h                                                             */
/* Author: Nickolas Casalinuovo                                      */
/*-------------------------------------------------------------------*/

#ifndef STDLIB_INCLUDED
#define STDLIB_INCLUDED
#include <stdlib.h>
#endif

#ifndef STR_INCLUDED
#define STR_INCLUDED

/*-------------------------------------------------------------------*/
/*   Function takes in a string as an input (iSrc), and returns the  */
/*   length of the array up to the \0 char. 		   	     */
/*-------------------------------------------------------------------*/
size_t Str_getLength(const char iSrc[]);

/*-------------------------------------------------------------------*/
/*   Function copies all chars in iSrc to dest. Returns reference    */
/*   to the first element of dest        	        	     */
/*-------------------------------------------------------------------*/
char *Str_copy(char *dest, const char *iSrc);

/*-------------------------------------------------------------------*/
/*   Function concatenates chars of iSrc to the end of dest. Returns */
/*   reference to the first element of dest.     	       	     */
/*-------------------------------------------------------------------*/
char *Str_concat(char *dest, const char *iSrc);

/*-------------------------------------------------------------------*/
/*   Function takes in two strings, compA and compB, respectively.   */
/*   then compares the two lexicographically. Returns 1 if compA is  */
/*   greater than compB, -1 if compA is less than compB, and 0 if    */
/*   the two strings are equal.               		             */
/*-------------------------------------------------------------------*/
int Str_compare(const char *compA, const char *compB);

/*-------------------------------------------------------------------*/
/*   Function takes in a reference to two strings, needle and        */
/*   haystack. If the needle is of length zero, the haystack is      */
/*   returned. However, if the needle is if of length one or         */
/*   greater, the reference to the first char of the first substring */
/*   that matches needle is returned. Finally, if the needle is not  */
/*   in the haystack, NULL is returned.				     */
/*-------------------------------------------------------------------*/
char* Str_search(const char *haystack, const char *needle);


#endif
