# 1.1 Éléments du réseau - QUIZZ


**1. Pour le matériel **B**, connais-tu ses différences avec **A** ?**  

* A est un switch. Il connecte plusieurs appareils ensemble.    
* B est Firewall/Routeur. Il protège les appareils du réseau LAN ou PAN des attaques extérieures (réseau wan, man, gan) et transmettent les paquets de la source à la destination via un IP publique.
  
**2. Que représente **em0**, **em1**, **em2** ?**

Ils représentent les ports du pfSense (un OS qui fait office de firewall et routeur).  
* em0 est un port externe.  
* em1 et em2, des ports internes.

**3. Que signifie **/26** ?**

Ca signifie que dans le masque sous-réseau, il y a 26 bit en 1.  
Ca veut dire qu'en binaire, ce sera sous cette forme ci => 1111 1111 - 1111 1111 - 1111 1111 - 1100 0000  
Et que la partie en 1 c'est la partie réseau de l'adresse IP.
  
**4. Dans le vocabulaire IP, qu'est-ce que **Ubuntu-1**, **Ubuntu-2**, ... ?**

Ce sont des PC dont le system exploitation Linux installé dessus est un Ubuntu.

**5. De même, qu'est-ce que **A** et **B** ?**

A est un switch. C'est un commutateur qui connecte plusieurs appareils ensemble et leur permet d'échanger des données entre eux dans un même réseau ou vers un autre réseau.  
B est un OS qui fait office de firewall et routeur.

**6. Peut-on considérer que **Ubuntu-2** est connecté directement à **em1** de l'équipement pfSense ?**
Non. Ubuntu-2 est connecté à em1 via le switch.​

<br><br>
___

# 1.2 Etude théorique  
**11. Calcul pour les deux réseaux**
* L'adresse de diffusion  

	- Interface LAN (Ubintu-2) : 10.0.0.0 /24
	- Interface OPT1 (Uuntu-1) : 10.0.1.192 /26

* La plage d'adresses disponible  

	- Interface LAN (Ubintu-2) : 10.0.0.1 - 10.0.0.254
	- Interface OPT1 (Uuntu-1) : 10.0.1.193 - 10.0.1.254

<br>

**12. La machine Ubutun-1 et Ubutun-2 peuvent elle communiquer entre elle ? Explique la raison.**  
  
Ils peuvent communiquer entre elles via pfSence qui est un routeur/firewall. Le routeur permet la communication entre un réseau local et internet ou entre deux réseaux locaux.   

<br>

**13. De même, quelles machines vont pouvoir _**sortir**_ du réseau ?**  

Ubuntu-2  

<br>

**14. On veut passer les adresses IP des machines en dynamique pour qu'elles puissent toutes communiquer entre-elles. Doit-on ajouter des éléments au schéma pour que cela soit possible ? Deux situations sont possible.  
On doit soit :**  

1 - ajouter un serveur DHCP à chacun de ces réseau locaux  
2 - ajouter un serveur DHCP à un réseau local et un ​Agent relais DHCP l'autre réseau local.  
<br>
___

# 1.3 Analyse de trames  

#### Fichier 1 :  
​  
**16. Dans cette trame, qui initialise la communication ? **  

Private_66:68:00 (00:50:79:66:68:00) 

<br>

**17. Est-ce que cette communication a réussi ? Si oui, indique entre quels matériel, si non indique pourquoi cela n'a pas fonctionné.**  

Communication réussi. C'est entre Private_66:68:00 (00:50:79:66:68:00) et Private_66:68:03  (00:50:79:66:68:03)

<br>

**18. A qui correspond le **request** et le **reply** dans toute la trame ?**  

à des pings de request et reply

<br>

**19. Quels ont été les rôles des matériels **A** et **B** ?**  

A oriente le paquet de la demande du client à B qui enverra la demande vers l'extérieur (Wan ou Gan)
​  
<br><br>

#### Fichier 2 
​  
**20. Dans cette trame, qui initialise la communication ?**  

10.10.80.3

**21. Est-ce que cette communication a réussi ? Si oui, indique entre quels matériel, si non indique pourquoi cela n'a pas fonctionné.**  

Non. Destination unreachable. 

**22. Quels ont été les rôles des matériels **A** et **B** ?**  

​Ils n'ont rien fait ou ils n'existe pas.

<br><br>

#### Fichier 3  
​  
**23. Dans cette trame, qui initialise la communication ?**  

ca:01:DA:D2:00:08

**24. Est-ce que cette communication a réussi ? Si oui, indique entre quels matériel, si non indique pourquoi cela n'a pas fonctionné.**  

Non. Destination unreachable. 

**25. Quels ont été les rôles des matériels **A** et **B** ?**  


**26. Où vois-tu les différents protocoles encapsulés ?**  
