library (tidyverse)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))#scattergraph
?mpg
data=(mpg)
view(mpg)

view(mtcars)
ggplot(data=mpg) + geom_point(mapping = aes(x=drv , y=class))

#Shows the different classes of cars using shapes 
ggplot(data=mpg) + geom_point(mapping= aes(x= displ,y=hwy,shape=class)) #gives each class a shape but only works for 6
ggplot(data = mpg) + geom_point(mapping=aes(y=manufacturer , x=cty ,alpha=manufacturer))
ggplot(data = mpg) + geom_point(mapping=aes(x=manufacturer , y=cty ,color=manufacturer))#identifies each manufacturer by a distinct color 

  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
?facet_wrap
p <- ggplot(mpg, aes(displ, hwy)) + geom_point()#helps you see all your data ata once
p + facet_wrap(vars(class), nrow = 2,ncol = 5)
view(diamonds)

ggplot(diamonds,aes( cut,price))+
 geom_col(fill="green")+ labs(title="Expense of each cut")#bar plot

ggplot (diamonds,aes(cut,y))+geom_col(fill="orange")

ggplot(mtcars,aes(disp,mpg))+ geom_col(fill="pink")

ggplot(mpg,aes(manufacturer,cty))+ geom_col(fill="red")

totalprice<-sum(diamonds$price)
view(totalprice)



