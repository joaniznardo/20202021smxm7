# Servei de Proxy (Squid)

Després d'un temps de funcionament de l'acadèmia física s'ha observat que se fa un mal ús de l'accés a internet per part del l'alumnat i de part del professorat:  
- s'accedeix a llocs on no és recomanable. (filtrat).    
- hi ha múltiples accessos al mateix lloc.  (cache).  
- se vol donar un toc a qui fa un mal ús.  (autenticació i registre).  

Se us encarrega la instal·lació d'un servei de proxy per donar solució a aquestes problemàtiques.

## Restriccions:  
- el programari servidor de transferència de fitxers serà squid.  
- la instal·lació del servidor serà en intd o intf (proxy directe).  
- la navegació se farà des del firefox de inta.  
- l'autenticació serà bàsica hi ha d'haver al menys dos grups de comptes (alumnat i professorat).  
- el professorat podrà accedir a webs que l'alumnat no pot accedir.     
- no se podrà en cap cas descarregar fitxers de tipus exe (windows).  



## Etapes: (de més senzill a més complex)  
1) Instal·lació i configuració del servidor.
2) Configuració del navegador. 
3) Test
4) Filtrat de webs | tipus de contingut
5) caché de contingut http (isos|pdf)
6) autenticació (simple | ldap (voluntària))


## Voluntària:
7) implementar un proxy transparent a fw  (Sols si s'ha fet totes les anteriors. Sols protocol http)  


## Avaluació:  
- Continua de l'evolució individual (grau d'activitat productiva, grau d'autonomia, grau de col·laboració)  
- Video-demo de 3 min max (screencasting a partir d'un meet entre els membres de l'equip).   

## Termini:  
data límit per lliurament video: dj 18 de febrer 23:00.  

[esquema](./squid.svg) 

[Al turrón!](https://www.youtube.com/watch?v=RtUs_xWYM2M)

### Preguntes que us ajudaran per aconseguir l'objectiu

- puc accedir a internet?  
- puc accedir a les webs bloquejades per nom?  
- hi ha millora en l'accés a continguts prèviament descarregats?  
- puc saber qui ha visitat què?  
- puc bloquejar a un ordinador d'una xarxa però no a la resta
- puc bloquejar a un ordinador per MAC?
