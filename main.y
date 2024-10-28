%{
#include <stdio.h>
#define VERSION 20241028
%}

%token TOKEN_NAME

%% // Start of grammar rules

start: 
    TOKEN_NAME 
    | start TOKEN_NAME 
    ;

%% // End of grammar rules

int main(void) {
    return yyparse();
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

