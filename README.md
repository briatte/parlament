This repository contains code to build cosponsorship networks from bills passed in the [Czech Parliament](http://www.psp.cz/).

- [interactive demo](http://f.briatte.org/parlviz/poslanecka/)
- [static plots](http://f.briatte.org/parlviz/poslanecka/plots.html)
- [more countries](https://github.com/briatte/parlnet)

# HOWTO

Replicate by running `make.r` in R.

The `data.r` script downloads information on bills and sponsors. Parliamentary chairs (presidents) are excluded from the sponsor sample.

The `build.r` script then assembles the edge lists and plots the networks, with the help of a few routines coded into `functions.r`. Adjust the `plot`, `gexf` and `mode` parameters to skip the plots or to change the node placement algorithm.

# DATA

## Bills

- `url` -- bill URL
- `date` -- date of introduction (POSIXlt, yyyy-mm-dd)
- `title` -- short title
- `themes` -- semicolon-separated bill themes (approximately 220 values; missing for 10% of bills)
- `keywords` -- semicolon-separated EUROVOC keywords (approximately 1,300 values; none missing)
- `authors` -- profile URLs of sponsors

## Sponsors

The sponsors data have multiple entries for each sponsor (one per legislature in which the sponsor sat).

- `name` -- sponsor name
- `legislature` -- legislature of activity
- `sex` -- gender (F/M), imputed from language ("Narozena")
- `born` -- year of birth (int)
- `mandate` -- legislatures in which the sponsor sat (semicolon-separated)
- `constituency` -- constituency, stored as the string to its Wikipedia Čeština entry
- `party` -- political party, abbreviated
- `partyname` -- political party, full name
- `url` -- full profile URL (contains legislature number)
- `photo` -- photo URL
- `uid` -- unique identifier, built out of the sponsor name and legislature of activity

The chamber presidents of legislatures 6 (2010-2013) and 7 (2013-207) have cosponsored a few bills but are not included in the networks, as they do not have a party affiliation during the presidency mandate.
