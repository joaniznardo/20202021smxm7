# sessió 01 - Intro a Git: Posem ordre abans de començar.
En aquesta sessió hem vist els principis bàsic de git i hem creat un compte a github i un primer repositori.

# sessió 02 - Intro a Git: continuació.
En la segona sessió de git hem vist el procés complet de crear un fitxer nou a l'àrea de treball (workspace), catalogat del mateix amb el git add (index) i posterior validat (commit) per fer que acabe en el repositori local. A continuació cal realitzar el git push per enviar els commits pendents al repositori remot associat. Igualment hem vist com generar el parell de claus pública-privada amb l'ordre ssh-keygen. Si incorporem la clau pública a github, llavors per actualitzar els repositoris remots lonats via ssh no caldra posar el compte i la contrassenya. Finalment hem modificat un fitxer i l'hem tornat a actualitzar tant al repositori local com al remot.

# sessió 03 - Hugo - static website generator.

Per al nostre projecte (crear la infraestructura pública i privada d'una acadèmia d'informàtica) necessitarem almenys una web. Una de les vies més ràpides per generar una és via un generador de webs estàtiques (sempre s'envia la mateixa informació per part del servidor web). Un dels possibles candidats és el potent HUGO. Ens caldrà doncs:
 
- intal·lar HUGO
  - [web](https://gohugo.io/)
  - [instal·lació](https://gohugo.io/getting-started/installing)
  - [HomeBrew](https://docs.brew.sh/Homebrew-on-Linux)
- crear un blog (seguint l'exemple del quickstart) 
  - [quickstart](https://gohugo.io/getting-started/quick-start/)

# sessió 04 - Hugo - Creació de currículum online - Ús de themes (temes/plantilles).

Per tal de demostrar el potencial del professorat de la vostra acadèmia, caldrà publicitar el vostre curriculum online (perquè s'entén que treballareu allí, oi?). Una manera (hi ha alguna de més ràpida?) de generar-lo és aprofitar una estructura ja creada. En aquest cas és el tema *aafu* de themes.gohugo.io.

Partint del programari Hugo instal·lat (un únic executable), crea el teu currículum online amb una foto teva.

- Hugo instal·lat (sessió anterior)
- crear una web mitjançant hugo (cvonline)
- afegir el tema aafu
- copiar el fitxer de configuració de la web d'exemple al directori arrel de la web cvonline
- modificar el fitxer de configuració adaptant-lo a les teves dades (config.toml)
- afegir la teva foto al lloc indicat (pista: mira en el fitxer de configuració, quin és el fitxer al que fa referència) per tal que aparegui (en una rodona) la teva foto.


# sessió 05 - Primer servidor web: Nginx

El resum de la sessió està a [resum sessió 05](https://hackmd.io/@joaniznardo/ryddNTurv) 

