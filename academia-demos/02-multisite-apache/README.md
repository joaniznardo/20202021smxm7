# Apache multisite

## PREREQUISITS

S'enten que tenim ja realitzats els següents passes:
- compte **user1** *sudoer* a **dmza** (amb permís **sense contrassenya** per a rsync)
- **clau pública** del compte teu en la màquina física com a **clau vàlida** (autorizada) al **compte user1** de **dmza**
- **tunel a dmza a través de base**


Aquí trobem dos directoris dmza i dmza-molona que contenen els fitxers de configuració i les dades de dues webs (senzilla i més divertida) que se poden posar en marxa a dmza.


Per "passar" el contingut a la dmza d'una manera **elegant** se proporciona el fitxer Makefile per tal de fer aquestes dues operacions: 
- make up
- make down

L'ordre **make up** passarà el contingut del directori *dmza* a la *màquina virtual dmza*

L'ordre **make down** el procés contrari, recuperant de *la màquina virtual* els canvis al directori *dmza*


