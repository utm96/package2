library(shiny)
library(MyPackage1)

ui <- MyPackage1::ui_module1
server <- MyPackage1::server_module1

shinyApp(ui = ui, server = server)