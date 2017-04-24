// Bradley Bernard, bmbernar@ucsc.edu
// CS 101: PA5
// August 4, 2015
// $Id: FindComponents.c,v 1.2 2015-08-10 15:31:42-07 - - $

#include<stdio.h>
#include<string.h>
#include<stdlib.h>

#include "Graph.h"

#define MAX_LEN 255

int main(int argc, char * argv[]){
   FILE *in, *out;
   char line[MAX_LEN];
   
   if( argc != 3 ){
      printf("FindComponents: %s <input file> <output file>\n", argv[0]);
      exit(1);
   }

   in = fopen(argv[1], "r");
   out = fopen(argv[2], "w");
   if( in==NULL ){
      printf("Unable to open file %s for reading\n", argv[1]);
      exit(1);
   }
   if( out==NULL ){
      printf("Unable to open file %s for writing\n", argv[2]);
      exit(1);
   }

   fgets(line, MAX_LEN, in);
   int size = 0;
   sscanf(line, "%d", &size);
   
   List S = newList();
   for(int x = 1; x <= size; ++x) 
      append(S, x);
   
   Graph G = newGraph(size);
   while( fgets(line, MAX_LEN, in) != NULL)  {
      int a = 0;
      int b = 0;
      sscanf(line, "%d %d", &a, &b);
      if(a == 0 && b == 0) 
         break;
      addArc(G, a, b);   
   }
   
   DFS(G, S);
   Graph T = transpose(G);
   int scc = 0;
   DFS(T, S);
   moveFront(S);
   while(index(S) >= 0) {
      if(getParent(T, get(S)) == NIL)
         scc++;
      moveNext(S);
   }
  
   List Lscc[scc];
   for(int i = 0; i < scc; ++i) {
      Lscc[i] = newList();
   }
   
   moveFront(S);
   int l = scc;
   while(index(S) >= 0) {
      if(getParent(T, get(S)) == NIL)
         --l;
      if(l == scc) 
         break;
      append(Lscc[l], get(S));
      moveNext(S);
   }

   fprintf(out, "Adjacency list representation of G:\n");
   printGraph(out, G);
   fprintf(out, "\nG contains %d strongly connected components:", scc);
   for(int m = 0; m < scc; ++m) {
      fprintf(out, "\nComponent %d: ", (m + 1));
      printList(out, Lscc[m]);
      freeList(&(Lscc[m]));
   }
   fprintf(out, "\n");
   freeGraph(&G);   
   freeGraph(&T);
   freeList(&S);

   /* close files */
   fclose(in);
   fclose(out);
   return(0);
}
