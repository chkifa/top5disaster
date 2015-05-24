library(shiny)
library(plotrix)
#library(ggplot2)
source("global.r")
function(input, output) {

 af_d <- reactive({
    af_agg<-aggregate(af[input$vars],by=list("Type of disaster"=af$disaster.type),FUN = function(x){sum(as.numeric(x))})
	af_agg<-af_agg[order(af_agg[2],decreasing = TRUE),]
	names(af_agg)<-c("Type of disaster",paste("Total of ", substring(input$vars,7)))
	return(af_agg)
  })
 am_d <- reactive({
    am_agg<-aggregate(am[input$vars],by=list("Type of disaster"=am$disaster.type),FUN = function(x){sum(as.numeric(x))})
	am_agg<-am_agg[order(am_agg[2],decreasing = TRUE),]
	names(am_agg)<-c("Type of disaster",paste("Total of ", substring(input$vars,7)))
	return(am_agg)	
	})
 as_d <- reactive({
    as_agg<-aggregate(as[input$vars],by=list("Type of disaster"=as$disaster.type),FUN = function(x){sum(as.numeric(x))})
	as_agg<-as_agg[order(as_agg[2],decreasing = TRUE),]
	names(as_agg)<-c("Type of disaster",paste("Total of ", substring(input$vars,7)))
	return(as_agg)
	})
 eu_d <- reactive({
    eu_agg<-aggregate(eu[input$vars],by=list("Type of disaster"=eu$disaster.type),FUN = function(x){sum(as.numeric(x))})
	eu_agg<-eu_agg[order(eu_agg[2],decreasing = TRUE),]
	names(eu_agg)<-c("Type of disaster",paste("Total of ", substring(input$vars,7)))
	return(eu_agg)
	})
 oc_d <- reactive({
    oc_agg<-aggregate(oc[input$vars],by=list("Type of disaster"=oc$disaster.type),FUN = function(x){sum(as.numeric(x))})
	oc_agg<-oc_agg[order(oc_agg[2],decreasing = TRUE),]
	names(oc_agg)<-c("Type of disaster",paste("Total of ", substring(input$vars,7)))
	return(oc_agg)	
	
  })
  		output$africa <- renderPlot({
		af_pct <- round(af_d()[,2]/sum(af_d()[,2])*100,2)
		af_lbls <- paste(af_d()[,1], af_pct) # add percents to labels
		af_lbls <- paste(af_lbls,"%",sep="") # ad % to labels 
		pie_af<- pie3D(af_d()[2][1:5,],labels=af_lbls[1:5],explode=0.2,labelrad=1.3,main=paste("Top 5 ",paste("total", substring(input$vars,7))," by disaster type",sep=""))
		print(pie_af)
						}, height=550)
		
		output$africatab <- renderDataTable({
			af_d()
			},options = list(lengthMenu = c(5, 10, 15), pageLength = 5))		


		output$americas <- renderPlot({
		am_pct <- round(am_d()[,2]/sum(am_d()[,2])*100,2)
		am_lbls <- paste(am_d()[,1], am_pct) # add percents to labels
		am_lbls <- paste(am_lbls,"%",sep="") # ad % to labels 
		pie_am <- pie3D(am_d()[2][1:5,],labels=am_lbls[1:5],explode=0.2,labelrad=1.3,main=paste("Top 5 ",paste("total", substring(input$vars,7))," by disaster type",sep=""))
		print(pie_am)
						}, height=550)
		output$americastab <- renderDataTable({
			am_d()
			},options = list(lengthMenu = c(5, 10, 15), pageLength = 5))
						
		output$asia <- renderPlot({
		as_pct <- round(as_d()[,2]/sum(as_d()[,2])*100,2)
		as_lbls <- paste(as_d()[,1], as_pct) # add percents to labels
		as_lbls <- paste(as_lbls,"%",sep="") # ad % to labels 
		pie_as <- pie3D(as_d()[2][1:5,],labels=as_lbls[1:5],explode=0.2,labelrad=1.3,main=paste("Top 5 ",paste("total", substring(input$vars,7))," by disaster type",sep=""))
		print(pie_as)
						}, height=550)
		output$asiatab <- renderDataTable({
			as_d()
			},options = list(lengthMenu = c(5, 10, 15), pageLength = 5))
						
		output$europe <- renderPlot({
		eu_pct <- round(eu_d()[,2]/sum(eu_d()[,2])*100,2)
		eu_lbls <- paste(eu_d()[,1], eu_pct) # add percents to labels
		eu_lbls <- paste(eu_lbls,"%",sep="") # ad % to labels 
		pie_eu <- pie3D(eu_d()[2][1:5,],labels=eu_lbls[1:5],explode=0.2,labelrad=1.3,main=paste("Top 5 ",paste("total", substring(input$vars,7))," by disaster type",sep=""))
		print(pie_eu)
						}, height=550)
		output$europetab <- renderDataTable({
			eu_d()
			},options = list(lengthMenu = c(5, 10, 15), pageLength = 5))
						
		output$oceania <- renderPlot({
		oc_pct <- round(oc_d()[,2]/sum(oc_d()[,2])*100,2)
		oc_lbls <- paste(oc_d()[,1], oc_pct) # add percents to labels
		oc_lbls <- paste(oc_lbls,"%",sep="") # ad % to labels 
		pie_oc <- pie3D(oc_d()[2][1:5,],labels=oc_lbls[1:5],explode=0.2,labelrad=1.3,main=paste("Top 5 ",paste("total", substring(input$vars,7))," by disaster type",sep=""))
		print(pie_oc)
						}, height=550)
		output$oceaniatab <- renderDataTable({
			oc_d()
			},options = list(lengthMenu = c(5, 10, 15), pageLength = 5))				
}