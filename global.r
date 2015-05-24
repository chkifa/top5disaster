globe_20C_disaster <- read.csv("data/natural_disaster_globe_20C.csv", header = TRUE, sep = ",")

#Africa

africa_20C_disaster<-subset(globe_20C_disaster,continent=="Africa" & year<2000 )
af<-africa_20C_disaster[,-c(6,7,8)]
# af_deaths_by_type<-aggregate(africa_20C_disaster$Total.deaths,by=list(africa_20C_disaster$disaster.type),sum)

# af_deaths_by_type<-af_deaths_by_type[order(af_deaths_by_type$x,decreasing = TRUE),]

# af_pct <- round(af_deaths_by_type$x/sum(af_deaths_by_type$x)*100,2)
# af_lbls <- paste(af_deaths_by_type$Group.1, af_pct) # add percents to labels
# af_lbls <- paste(af_lbls,"%",sep="") # ad % to labels 

#pie_af <- pie3D(af_deaths_by_type$x[1:5],labels=af_lbls[1:5],explode=0.2,labelrad=1.5,main="Top 5 deaths by disaster type")
#Americas
Americas_20C_disaster<-subset(globe_20C_disaster,continent=="Americas" & year<2000)
am<-Americas_20C_disaster[,-c(6,7,8)]
# am_deaths_by_type<-aggregate(Americas_20C_disaster$Total.deaths,by=list(Americas_20C_disaster$disaster.type),sum)


# am_deaths_by_type<-am_deaths_by_type[order(am_deaths_by_type$x,decreasing = TRUE),]

# am_pct <- round(am_deaths_by_type$x/sum(am_deaths_by_type$x)*100,2)
# am_lbls <- paste(am_deaths_by_type$Group.1, am_pct) # add percents to labels
# am_lbls <- paste(am_lbls,"%",sep="") # ad % to labels 

#pie_am <- pie3D(am_deaths_by_type$x[1:5],labels=am_lbls[1:5],explode=0.2,labelrad=1.5,main="Top 5 deaths by disaster type")

#Asia
Asia_20C_disaster<-subset(globe_20C_disaster,continent=="Asia" & year<2000)
as<-Asia_20C_disaster[,-c(6,7,8)]
# as_deaths_by_type<-aggregate(Asia_20C_disaster$Total.deaths,by=list(Asia_20C_disaster$disaster.type),sum)


# as_deaths_by_type<-as_deaths_by_type[order(as_deaths_by_type$x,decreasing = TRUE),]

# as_pct <- round(as_deaths_by_type$x/sum(as_deaths_by_type$x)*100,2)
# as_lbls <- paste(as_deaths_by_type$Group.1, as_pct) # add percents to labels
# as_lbls <- paste(as_lbls,"%",sep="") # ad % to labels 

# pie_as <- pie3D(as_deaths_by_type$x[1:5],labels=as_lbls[1:5],explode=0.2,labelrad=1.5,main="Top 5 deaths by disaster type")

#Europe
Europe_20C_disaster<-subset(globe_20C_disaster,continent=="Europe" & year<2000)
eu<-Europe_20C_disaster[,-c(6,7,8)]
# eu_deaths_by_type<-aggregate(Europe_20C_disaster$Total.deaths,by=list(Europe_20C_disaster$disaster.type),sum)


# eu_deaths_by_type<-eu_deaths_by_type[order(eu_deaths_by_type$x,decreasing = TRUE),]

# eu_pct <- round(eu_deaths_by_type$x/sum(eu_deaths_by_type$x)*100,2)
# eu_lbls <- paste(eu_deaths_by_type$Group.1, eu_pct) # add percents to labels
# eu_lbls <- paste(eu_lbls,"%",sep="") # ad % to labels 

# pie_eu <- pie3D(eu_deaths_by_type$x[1:5],labels=eu_lbls[1:5],explode=0.2,labelrad=1.5,main="Top 5 deaths by disaster type")
#Oceania
Oceania_20C_disaster<-subset(globe_20C_disaster,continent=="Oceania" & year<2000)
oc<-Oceania_20C_disaster[,-c(6,7,8)]
# oc_deaths_by_type<-aggregate(Oceania_20C_disaster$Total.deaths,by=list(Oceania_20C_disaster$disaster.type),sum)


# oc_deaths_by_type<-oc_deaths_by_type[order(oc_deaths_by_type$x,decreasing = TRUE),]

# oc_pct <- round(oc_deaths_by_type$x/sum(oc_deaths_by_type$x)*100,2)
# oc_lbls <- paste(oc_deaths_by_type$Group.1, eu_pct) # add percents to labels
# oc_lbls <- paste(oc_lbls,"%",sep="") # ad % to labels 

# pie_oc <- pie3D(oc_deaths_by_type$x[1:5],labels=oc_lbls[1:5],explode=0.2,labelrad=1.5,main="Top 5 deaths by disaster type")