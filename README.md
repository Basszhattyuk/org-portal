# Hogyan szerkesszem?

- klónozd ezt a repository-t.

## Cikk írás

Minden oldal a `content/` mappában található, az oldalak útvonalait a fájlok és mappák elhelyezkedése határozza meg.

Egy oldal tulajdonképpen egy markdown fájl. A következő kötelező a tetején:
```md
+++
title: "cím"
+++
```

## Közzététel

Automatikusan történik az oldal generálása (statikus oldal), amikor a `main` branchre pusholunk vagy PR-t mergelünk. A github pages a `main` branch alapján jeleníti meg az oldalt.

## Lokális tesztelés

### Apró szerkesztés

Bármilyen kódszerkesztő, amely képes markdown fájlok megjelenítésére, például [vscode](https://code.visualstudio.com/).

### Lokális szerver futtatása

1. Szükséged lesz a [Zola](https://www.getzola.org/themes/tabi/) statikus oldal generáló programra.

2. Navigálj a leklónozott repo mappájába.

3. Futtasd: `zola serve` parancsot (feltételezem, hogy a zola program elérhető a PATH-edben, ha nem tudod miről van szó keresd **az oldal karbantártásáért felelőst**).
4. Enjoy: automatikusan generálja az oldalt és futtat egy teszt szervert, amelyet a böngészőből megtekinthetsz.

TIPP: Ha nem akar változni a kontent, índitsd újra a szervert.

# Megjegyzés

Örülnék, ha a commit megnevezések valamilyen konvenciót követnének, de ez nem szigorú elvárás.
