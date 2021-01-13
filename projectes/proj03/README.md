# Servei de transferència de fitxers. 

Se'ns ha encarregat que els diferents equips de desenvolupament web, de les diferents webs (Barcelona, Madrid i online) puguen enviar/eliminar el contingut que se publica a través del servidor web que preparàrem en el primer projecte. 

## Restriccions:  
- el programari servidor de transferència de fitxers serà proftpd.  
- l'accés s'haurà de fer amb seguretat (ftps).  
- el client gràfic serà filezilla.  
- el client textual serà lftp.  



## Etapes: (funció del nombre de webs i del nombre de persones que poden accedir)  
1) Una web; un compte;  
2) Una web; múltiples comptes;  
3) Múltiples webs; un compte;  
4) Múltiples webs; Múltiples comptes;  
5) Integració amb el servidor web 
6) Integració amb el servidor de noms


## Comparativa: (una de les dues per equip)
1) rsync
2) sftp

## Avaluació:  
- Continua de l'evolució individual (grau d'activitat productiva, grau d'autonomia, grau de col·laboració)  
- Video-demo de 3 min max (screencasting a partir d'un meet entre els membres de l'equip). Al menys les etapes 4,5 i 6 i la comparativa escollida.  

## Termini:  
data límit per lliurament video: dg 25 de gener 13:00.  

[Al turrón!](https://www.youtube.com/watch?v=RtUs_xWYM2M)

### Preguntes que us ajudaran per aconseguir l'objectiu

- quins directoris són accessibles al servidor ftp?  
- qui pot accedir a aquests directoris?  
- què se pot fer en aquests directoris?  
- com és la transferència d'informació i control des del punt de vista de la seguretat?  
- hi ha algun límit en quant a la quantitat de dades "pujades/baixades"? Se pot establir?  
- quins ports son necessaris en el servidor?  
- quines avantatges i inconvenients té l'ús d'rsync o sftp en lloc de ftp?  
