library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calculating BitAnd Result"),
  sidebarPanel(
    numericInput('id1','Enter First Value',1,min=0),
    numericInput('id2','Enter Second Value',1,min=0)
  ),
  mainPanel(
    h3('The BitAnd Result of the two values is:'),
    verbatimTextOutput('oid1')
  )
))