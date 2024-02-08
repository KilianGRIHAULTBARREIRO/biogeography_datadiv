sankey_diagram <- function(links, nodes, colorScale, fontSize = 13, width = 1000, height = 200, nodeWidth = 5, nodePadding = 20) {
  
  # Avec networkD3, la connexion doit être fournie en utilisant l'ID, pas le nom réel comme dans le dataframe de liens.
  links$IDsource <- match(links$source, nodes$name) - 1
  links$IDtarget <- match(links$target, nodes$name) - 1
  
  # Créer le graphique Sankey
  p <- sankeyNetwork(
    Links = links, Nodes = nodes,
    Source = "IDsource", Target = "IDtarget",
    Value = "value", colourScale = colorScale,
    fontSize = fontSize, width = width, height = height,
    nodeWidth = nodeWidth, nodePadding = nodePadding,
    sinksRight = FALSE
  )
  
  return(p)
}
