This repository contains code to build cosponsorship networks from bills passed in the [lower](http://www.psp.cz/) and [upper]() chambers of the Czech Parliament.

- [interactive demo](http://f.briatte.org/parlviz/parlamentu/)
- [static plots](http://f.briatte.org/parlviz/parlamentu/plots.html)
- [more countries](https://github.com/briatte/parlnet)

# HOWTO

Replicate by running `make.r` in R.

The network construction routine is identical for both chambers. The `data-*.r` scripts download information on bills and sponsors. Parliamentary chairs (presidents) of the lower chamber are excluded from the sponsor sample.

The `build-*.r` scripts then assemble the edge lists and plots the networks, with the help of a few routines coded into `functions.r`. Adjust the `plot`, `gexf` and `mode` parameters to skip the plots or to change the node placement algorithm.

Note that the networks of the upper chamber are assembled over time periods that more or less match legislatures 2 to 7 of the lower chamber, _not_ over the two-year periods that separate every senatorial election.

# DATA

## Bills

Lower chamber:

- `url` -- bill URL
- `date` -- date of introduction (POSIXlt, yyyy-mm-dd)
- `title` -- short title
- `themes` -- semicolon-separated bill themes (approximately 220 values; missing for 10% of bills)
- `keywords` -- semicolon-separated EUROVOC keywords (approximately 1,300 values; none missing)
- `authors` -- profile URLs of sponsors

Upper chamber:

- `session` -- Senate session
- `bill` -- bill numeric identifier
- `date` -- date of introduction (dd.mm.yyyy)
- `title` -- short title
- `authors` -- semicolon-separated sponsor identifiers (based on URLs)
- `n_au` -- number of sponsors
- `legislature` -- legislature of introduction (in reference to lower chamber)

## Sponsors

The sponsors data have multiple entries for each sponsor (one per legislature in which the sponsor sat).

Lower chamber:

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

Note: the chamber presidents of legislatures 6 (2010-2013) and 7 (2013-207) have cosponsored a few bills but are not included in the networks, as they do not have a party affiliation during the presidency mandate.

Upper chamber:

uid	url	name	sex	constituency	party	mandate	photo	legislature	nyears

- `uid` -- unique identifier (int)
- `url` -- full profile URL (contains last-updated time indication)
- `name` -- sponsor name
- `sex` -- gender (F/M), imputed from language ("člen")
- `constituency` -- constituency, stored as the string to its Wikipedia Čeština entry (two of which do not work due to duplicate constituency names -- see comment in `data-se.r` for details)
- `party` -- political party, abbreviated
- `mandate` -- date range of mandate
- `photo` -- photo URL
- `legislature` -- legislature of activity (in reference to lower chamber)

Note: the year of birth variable is missing for all senators.
