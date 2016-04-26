grammar GramaticaNoua;

start: 
	(declgen) (propozitieifgen) ? sfarsit	;
	




declgen:
	(declarare nline)+;

declarare: 
	variabila '=' variabila 	|	variabila '=' numar;






propozitieifgen: (propozitieif)+;

propozitieif:	'daca' conditie true (else) ? ifnline;

conditie:	'(' ifcondvar ')';

ifcondvar:	ifcond	|	nu ifcond;

ifcond:	(numar|variabila) operator (numar|variabila);

true:'dacada' (declarare nline);
	
else:'dacanu' (declarare nline);
	



	
variabila: lit*;
	
numar: '-'? INT	| 	'-'? INT '.' INT;
	
fragment INT: [0-9]+;

nu: '!';

operator:'<'	|	'>'	|	'<='	|	'>='	|	'=='	|	'!=';


nline:';';

ifnline: 'ifendl';
	
lit: [a-zA-Z];

spatiu: [\t\r\n]+ -> skip;

sfarsit: 'sfarsit';
