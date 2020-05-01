

# State.x77


data("GNI2014")
head(GNI2014)
treemap(GNI2014,
        index=c("continent", "iso3"),
        type = "value",
        vColor = "GNI",
        vSize = "population",
        title = "World's GNI")



st <- data.frame(state.x77)
st <- data.frame(st, stname = rownames(st)) # add stname
head(st)
glimpse(st)

treemap(st,
        index = c("stname"), # tile's name Setting
        vSize = "Area" ,          # tile's Size  meaningSetting
        vColor = "Income",         # tiles color's meaning  Setting
        type = "value",           # coloring type
        title = "USA states area and income" # treemap's title
        ) 
