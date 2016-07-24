library(bitops)
library(shiny)
runBitAnd <- function(i1,i2){
  tryCatch(
    {
      if (i1>0 &i2>0)
      {
        bitAnd(i1,i2)
      }
      else{
      "No negative Values"
      }
    },
    error = function(cond){
        "Please enter numeric Value"
    }
    
  )
}
shinyServer(
  function(input,output){
      output$oid1 <- renderPrint({runBitAnd(input$id1,input$id2)})
  }
)

