library(shiny)
library(ggplot2)
shinyUI(navbarPage("MORTALITY AND ECONOMIC LOSSES FROM WEATHER, CLIMATE AND WATER EXTREMES IN THE TWENTIETH CENTURY",
                   tabPanel("Introduction",
                            fluidPage(
                              fluidRow(
                                  column(width = 3,align="center",
                                         br(),
                                         img(src="disaster1.png", width=160,height=160)
                                        ),
                                  column(9,
                                         h3("Introduction"),
                                                                       
                                        p("Every year, disasters related to weather, climate and water hazards cause significant loss of life and set back economic and social development by years, if not decades.",br(),br(),
										"Storms, floods and droughts are among the most recurrent weather-, climate- and water-related hazards around the world. However, the distribution of deaths and economic losses from these hazards varies from Region to Region. For example, the main contributors to the loss of life have been droughts in Africa; storms in Asia, in Central America, North America and the Caribbean, and in the South-West Pacific; floods in South America; and heatwaves in Europe. On the other hand, a large portion of economic losses has been attributed to floods in Africa, Asia, South America and Europe, and to storms in Central America, North America and the Caribbean, and the South-West Pacific." ,br(),br(),""
										
										,strong("This Mini Atlas, allows us to discover the most deadly types of disaster and those that have more impact on the economy of a continent.")),
                                         
                                       h3("User guide"),
                                       p('1. Go to the tab "Top 5 disaster"',
                                         br(),
                                         '2. Select values for each "type of disaster" on the left-side panel',
										 br(),
										 '3. Select the continent that you want to see the 5 most dangerous disaster types ',
                                         br(),
                                         '(you can visualize at the same time, on the right-side panel, the percentage of caused death, affected or economics loss for each continent)'),
                                         
                                         
                                       
                                              
                                                fluidRow(
                                                  column(width = 8,
                                                         h3("Information about the dataset"),
                                                         "The analysis provided in this Atlas is based on the CRED EM-DAT database, which contains data on disasters caused by several types of natural hazards – geophysical, meteorological, climatological, hydrological and biological – and technological disasters dating back to the year 1900.",
                                                         br(),
                                                         "Available at:",
                                                         a("EM-DAT", href = "http://www.emdat.be/database"),
														 br(),
                                                         "This project is inspired from:", 
                                                         a("ATLAS OF MORTALITY AND ECONOMIC LOSSES FROM WEATHER, CLIMATE AND WATER EXTREMES (1970–2012)", href = "http://www.wmo.int/pages/prog/drr/transfer/2014.06.12-WMO1123_Atlas_120614.pdf")
														 ),
                                                  column(width = 4,align="center",
                                                         br(),br(),
                                                         img(src="world.jpg", width=219,height=160)
                                                         
                                                  )
                                                )
                                         )
                                         
                                       )
                                
                              )
                            ),
                   tabPanel("Top 5 disaster",
					fluidPage(

						  sidebarPanel(

								selectInput("vars", 'Result of a disaster:',choices= c("Total deaths"="Total.deaths","Total affected"="Total.affected","Total damage"="Total.damage")
						  
							  )),

			mainPanel(
							
				tabsetPanel(
							   
							tabPanel('Africa', plotOutput('africa')
							,dataTableOutput('africatab')
							),
								
							tabPanel('Americas', plotOutput('americas')
							,dataTableOutput('americastab')
							),
							
							tabPanel('Asia', plotOutput('asia')
							,dataTableOutput('asiatab')
							),
								
							tabPanel('Europe', plotOutput('europe')
							,dataTableOutput('europetab')
							),
							
							tabPanel('Oceania', plotOutput('oceania')
							,dataTableOutput('oceaniatab')
							)
							  
						    )
						)
						)
						),

                            tabPanel("Author & source code",
                                     fluidPage(
                                       fluidRow(
                                         column(width = 3),
                                         column(width=9,
                                                h2("Author and source code"),
                                                p("This ",strong("mini atlas")," was realized by ",
                                                  strong("K.CHKIFA"),
                                                  " in the frame of the ",
                                                  a("Data Science Specialization",href="https://www.coursera.org/specialization/jhudatascience/1"),
                                                  " by the Johns Hopkins University."
                                                  ),
                                                p("The source code is available on ",
                                                  a("Github",href="https://github.com/chkifa/top5disaster"),
												  "and the slide at :.... "
                                                  )
                                                )
                                       )
                                     )
                            )   
                            )
)
