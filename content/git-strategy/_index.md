+++
title = "Git Stratégia"
+++

# Git Stratégia

Nem várhatjuk el, hogy mindenki betartsa a következő konvenciókat, de örülnék, ha törekednénk rá.

## Trunk: main branch

Célja, hogy mindig felvállalható verzió legyen rajta.

Ha apró változtatást posztolsz és magabiztos vagy, ezen is dolgozhatsz.

## Nagyobb változtatások esetén

Kérlek dolgozz egy új branchen és amikor készen vagy kérj egy PR-t.

## Commit üzenetek

### Felelőssel kapcsolatos változtatások
Új felelős szerepkör hozzáadása
- forma: `new role([division]): [role name]` 
- példa:  `new role(org-portal): lead-maintainer`

Felelős megváltoztatása
- példa: `role transition(org-portal): lead-maintainer`

Felelős szerepkör leírásának megváltoztatása
- példa:  `change contract(org-portal): lead-maintainer`