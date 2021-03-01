# Fent marca pròpia: servidor de correu electrònic  
![](https://i1.wp.com/blog.mailtrap.io/wp-content/uploads/2020/01/boromir-email.jpg?w=500&ssl=1)  

Com a part final en la gestió de la infraestructura pública, se desitja que alumnat i professorat de l'acadèmia tinguen un correu corporatiu (exemple: joan@surfacad.edu). Ṕer motius de seguretat i disponibilitat se desitja poder donar d'alta els comptes d'una manera àgil i se te proposa fer-ho mitjançant poste (https://poste.io/) per tal de poder accedir a l'administració del servidor de correu des de qualsevol lloc que dispose d'un client http (navegador/curl). L'empresa **acad-deployments** per a la que treballes t'ha encomanat la tasca i t'ha proposat les següents etapes.  

## 1) Personalització del domini.  
Ja fa temps l'empresa va implantar una acadèmia d'informàtica anomenada surfacad.edu.  Tria un domini representatiu per al teu projecte.  
Us caldrà un nom de domini singular i el nom/s amb el que accedireu al servidor per als diferens serveis.

## 2) Generació de certificats de servidor i client.  
Se te proposa que generes (per si els necessites els certificats de client i servidor). Un lloc meravellós és (https://github.com/FiloSottile/mkcert). Un altre és (https://lukas.zapletalovi.com/2019/09/testing-tls-ca-server-and-client-certs.html).  

## 3) Instal·lació del servidor (a.k.a. "Docker is your best friend").  
Per proves (desenvolupament) recomane intd/inte. Per producció (real) recomane dmzc/dmzd.  

## 4) Gestió de comptes del domini  
(CRUD: alta/consulta/actualització/eliminació de comptes).  

## 5) Enviament de correus entre comptes del propi domini 
Client web (firefox) i client d'escriptori [**thunderbird|geary|evolution**]


**Termini**: data màxima > dijous 18 de març  
**lliurament**: quatre entrades, una per setmana a un blog personal (individual) de cada membre de l'equip amb el progrés realitzat (amb captures de pantalla, clar) a elteucompte.github.io.  
**Exemple**: joaniznardo.github.io. Dates de revisió del blog: dimarts 2/9/16/23 de març. El 23 de febrer heu de tindre la 1era entrada: planificació, és a dir, de què va el projecte i que veurem en les properes 4 entrades.  

**NOTA IMPORTANT**: les revisions les faré dimarts, per tant hauran d'estar preparades dilluns fins les 23:55.  

## Avaluació: 
- blog: 5 punts (criteris: senzillesa, concreció, planificació)  
  -- [link](https://forms.gle/1rAkzzchV7LSQ1wf6)
- demo dx 17 de març: 5 punts (petició per part del client que us ha contractat de diverses proves per demostrar que el vostre servei és usable)


*Recomanació per generar el blog*: **Hugo**


