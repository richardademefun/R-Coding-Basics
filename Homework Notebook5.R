rm(list = ls())


#Import Data
setwd("C:\\Users\\Richard Ademefun\\Desktop\\Learning R\\Section 6\\P2-Section6-Homework-Data")
movies <- read.csv("Section6-Homework-Data.csv")

head(movies)
colnames(movies) <- c("DayOfWeek","Director","Genre",
                      "MovieTitle","ReleaseDate","Studio",
                      "AdjustedGrossMillions","BudgetMillions",
                      "GrossMillions","IMDBRating","MovieLensRating",
                      "OverSeasMillions","OverSeas","ProfitMillions",
                      "Profit","RunTimeMins","USMillions","GrossUS")
head(movies)
summary(movies)
# only getting the genres i want

filter1 <- movies$Genre == "action"| movies$Genre == "adventure"|
  movies$Genre == "animation"|movies$Genre =="comedy"|movies$Genre =="drama"

movies.genre <- movies[filter1,]

filter2 <- movies.genre$Studio == "Buena Vista Studios"|
  movies.genre$Studio == "Paramount Pictures"|movies.genre$Studio == "Sony"|
  movies.genre$Studio == "Universal"|movies.genre$Studio == "WB"

movies.genre.studio <- movies.genre[filter2,]

p <- ggplot(data = movies.genre.studio,
            aes(x = Genre, y= GrossUS, colour = Studio))

q <- p +  geom_jitter(aes(size = BudgetMillions))+
  geom_boxplot(colour = "Black", alpha = 0.5)+
  scale_size_continuous(range = c(1, 3)) +
  ylab("Gross %US")+
  ggtitle("Domestic Gross % by Genre")+
  theme(axis.title.x = element_text(colour = "DarkBlue", size = 10),
      axis.title.y = element_text(colour = "DarkBlue", size = 10),
      axis.text.x = element_text(size=10),
      axis.text.y = element_text(size = 10),
      legend.title = element_text(size=10),
      legend.text = element_text(size=10),
      plot.title = element_text(colour="Black",
                                size=15,
                                family="Courier"))

q$labels$size = "Budget $M"

r <- q + guides(size = guide_legend(order = 1),
           colour = guide_legend(order = 2))
r

