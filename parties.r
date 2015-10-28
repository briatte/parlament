# party colors

colors = c(
  "KSCM"    = "#E41A1C", # Komunistická Strana Čech a Moravy, KSČM (Communist Party), red
  "CSSD"    = "#FF7F00", # Česká strana sociálně demokratická, ČSSD (Social Democratic Party), orange
  "SZ"      = "#4DAF4A", # Strana Zelených (Greens), green
  "KDU"     = "#FFFF33", # Křesťanská a demokratická unie, (People's Party), yellow
  "ANO2011" = "#053061", # Akce nespokojených občanů, ANO 2011, dark blue
  "VV"      = "#80B1D3", # Věci veřejné (Public Affairs), light blue
  "ODA"     = "#FFFFB3", # Občanská demokratická aliance, light yellow
  "US"      = "#00441b", # Unie Svobody–Demokratická unie, US–DEU (Freedom Union–Democratic Union), dark green
  "ODS"     = "#377EB8", # Občanská demokratická strana (Civic Democratic Party), blue
  "TOP09"   = "#984EA3", # Tradice Odpovědnost Prosperita, purple
  "USVIT"   = "#B3DE69", # Úsvit přímé demokracie, light green
  "SPR"     = "#444444", # Republikáni Miroslava Sládka, dark grey
  "IND"     = "#AAAAAA"  # unaffiliated, light grey (not used)
)

groups = c(
  "KSCM" = "Komunistická strana",
  "CSSD" = "Česká strana sociálně demokratická",
  "SZ" = "Strana zelených",
  "KDU" = "Křesťanská a demokratická unie",
  "ANO2011" = "Akce nespokojených občanů", # new in leg. 7
  "VV" = "Věci veřejné",
  "ODA" = "Občanská demokratická aliance",
  "US" = "Unie Svobody–Demokratická unie",
  "ODS" = "Občanská demokratická strana",
  "TOP09" = "Tradice Odpovědnost Prosperita",
  "USVIT" = "Úsvit přímé demokracie", # new in leg. 7
  "SPR" = "Republikáni Miroslava Sládka",
  "IND" = "independent"
)

# ParlGov Left/Right scores

scores = c(
  "KSCM"  = 0.7,
  "CSSD"  = 3,
  "SZ"    = 4.1,
  "KDU"   = 5.8,
  "ANO2011" = 6,
  "VV"    = 6,
  "ODA"   = 7.1,
  "US"    = 7.2,
  "ODS"   = 7.4,
  "TOP09" = 7.4,
  "USVIT" = 7.4,
  "SPR"   = 9.8,
  "IND" = Inf
)

stopifnot(names(colors) == names(groups))
stopifnot(names(colors) == names(scores))
