%{
#include <stdio.h>
%}

%option noyywrap

%%
if|elif|else|while|for|def|class|return { printf("Palabra Clave "); }
[a-zA-Z_][a-zA-Z0-9_]*                  { printf("Variable "); }
[a-zA-Z_][a-zA-Z0-9_]*\(\)              { printf("Funcion "); }
#.*$                                    { printf("Comentario "); }
==|!=|<|>|<=|>=                         { printf("Op. Comparacion "); }
^None$                                  { printf("Op. Nula "); }
"="                                     { printf("Asignacion "); }
":"                                     { printf("Colon"); }
[0-9]+                                  { printf("Numero "); }
%%

int main(int argc, char **argv) {
    FILE    *fd;

    if (argc == 2)
    {
        if (!(fd = fopen(argv[1], "r")))
        {
            perror("Error: ");
            return (-1);
        }
        yyset_in(fd);
        yylex();
        fclose(fd);
    }
    else
        printf("Usage: a.out filename\n");
    return (0);
}