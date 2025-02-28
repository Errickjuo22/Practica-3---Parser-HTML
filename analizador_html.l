%{
#include "analizador_html.h"
%}

%option yylineno

%%

"<!DOCTYPE"         { return DOCTYPE; }
"<html>"            { return HTML_OPEN; }
"</html>"           { return HTML_CLOSE; }
"<head>"            { return HEAD_OPEN; }
"</head>"           { return HEAD_CLOSE; }
"<meta"             { return META_TAG; }
"<title>"           { return TITLE_OPEN; }
"</title>"          { return TITLE_CLOSE; }
"<link"             { return LINK_TAG; }
"<script"           { return SCRIPT_TAG; }
"<body>"            { return BODY_OPEN; }
"</body>"           { return BODY_CLOSE; }
"<h1>"              { return H1_OPEN; }
"</h1>"             { return H1_CLOSE; }
"<h2>"              { return H2_OPEN; }
"</h2>"             { return H2_CLOSE; }
"<p>"               { return P_OPEN; }
"</p>"              { return P_CLOSE; }
"<img"              { return IMG_TAG; }
"<table>"           { return TABLE_OPEN; }
"</table>"          { return TABLE_CLOSE; }
"<tr>"              { return TR_OPEN; }
"</tr>"             { return TR_CLOSE; }
"<th>"              { return TH_OPEN; }
"</th>"             { return TH_CLOSE; }
"<td>"              { return TD_OPEN; }
"</td>"             { return TD_CLOSE; }

"charset"           { return CHARSET; }
"http-equiv"        { return HTTP_EQUIV; }
"content"           { return CONTENT; }
"name"              { return NAME; }
"viewport"          { return VIEWPORT; }
"rel"               { return REL; }
"type"              { return TYPE; }
"media"             { return MEDIA; }
"href"              { return HREF; }
"src"               { return SRC; }
"alt"               { return ALT; }
"style"             { return STYLE; }
"data-Quiebre"      { return DATA_QUIEBRE; }

"'"                 { return SINGLE_QUOTE; }  
"-"                 { return HYPHEN; }        

\"[^\"]*\"          { return STRING; }   
[a-zA-Z0-9]+        { return TEXT; }
"<"                 { return LT; }
">"                 { return GT; }
"/"                 { return SLASH; }
"="                 { return EQUALS; }
[ \t\n]+            { /* Ignorar espacios */ }
.                   { printf("Caracter inesperado: %s\n", yytext); }

%%

int yywrap(void) {
    return 1;
}
