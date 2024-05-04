---
  title: "Spatial Statistics Lab 1"
author: '**Onyedikachi J Okeke**'
date: "`r Sys.Date()`"
output:
  word_document: default
html_document: default
pdf_document: default
---

#No 1.3
#eight tosses of fair die
#2 5 1 6 5 5 4 1 
dieroll <- c(6,5,1,6,5,5,4,1,6,3,4,6,3,2 )
dieroll

3*dieroll

#No 1.4
#to see objects in the workspace
ls() 

#divide dieroll by 2

newdieroll <- dieroll/2
newdieroll

ls()
#remove objects from the workspace

rm(newdieroll)

ls()

#1.5 Getting help

help(log)

#running log functions

log(1000, base = exp(1))

logb(8676, base = exp(1))

log10(2467)

log2(7654)

#logfunction of dieroll

log2(dieroll)

#list of funtions that has norm

apropos("norm")

?mean
?median

#1.6
#adding Matrices

b <- c(dieroll)
B <- matrix(b,nrow=2,ncol=7, byrow = FALSE)
B

A <- matrix(b,2,7)
A

#2.1
#Mathematical operations on R
#Addition
8+5

#Division 
16/2

#simplify 

8*2-3+8^2

#simplify complicated maths
(11908-16)/8-33*9*100/(7^2-2)

#Basic maths operations 

#square root
sqrt(6)

#absolute values 
abs(5-15)

#Cosine 
cos(6*pi+2)

#Factorial 
factorial(8)

#Vectors
#Creating vectors

#create vector of my info 
myinfo <- c(age = 30, 
             height_in = 72, #inches
             height_cm = 182.88, #cm conversion
             phone = 5055206192)
myinfo

m <- c(1,5,3,4,8)
v <- c(5,6,7,8,2)

#Vector Operations
m+v
v*m
v-m
v/m
m^v
sin(m*pi) + sin(v*pi)
cos(m*pi) + cos(v*pi)

#Matrix Operations
u <- c(1,2,3,4,5,6,7,8,9,10,12,14,15)
u

U <- matrix(u, nrow = 3, ncol = 3)
U

p <- c(1,4,3,4,5,6,7,8,9,10,12,14,18)

P <- matrix(p, nrow = 3, ncol = 3)

P

#dimensions of a matrix 
dim(P)

#Determinants 
determinant.matrix(P)

#Matrix Multiplication 
P%*%U

#2.4 Exercises
#1
abs(2^3-3^2)

#2 Matrix Dot products
exp(exp(1))

dot_product <- sum(P*U)

dot_product

#3.1 Sequence Generation
#1a
rep(1:3, 3)
#1b
seq(10, 10.5, by = 0.04545)
#1C
rep(c(1,2,3,"banana"),2)

#2 Using Scan
blahblah <- scan()
49
42
37
86
55
12
61
75
90
87

blahblah

#3 Dataframe schedule 

# Course numbers
coursenumber <- c(501, 512, 525, 680)

# Meeting days
coursedays <- c("MWF", "TR", "MW", "MW")  

# Anticipated grades
grade <- c("A", "A", "B", "B")

# Create data frame 
schedule <- data.frame(coursenumber, coursedays, grade)

# See the schedule  
schedule

#4 Introduction to Graphics

#Plot function 
plot(P,U)

#Curve function
curve(sin(x), from = 0, to = 2*pi)

#4.5 exercises 
demo(graphics)
demo(persp) # for 3-d plots

#5.1 Summarizing Data
#Load the Cars data set
data(mtcars)

attach(mtcars)

mtcars

mean(hp)


#5.2 Graphical Summaries
#barplot
barplot(table(cyl)/length(cyl))

#Histogram 
data(faithful)
attach(faithful)
hist(eruptions, main = "Old Faithful data", prob = T)

#Stem
stem(waiting)

#Boxplot
boxplot(faithful)

#This function will create the values of the empirical distribution function (EDF) Fn(x).
plot(ecdf(x))

#a normal probability plot (NPP) or normal q-q plot.
qqnorm(x)

#qqline
qqline(x)

#5 number Summary
summary(stack.loss)
#histogram 
hist(stack.loss)
#normal probability plot
qqnorm(stack.loss)

#7.1 Statistical Methods
#One and Two-sample t-tests
data(trees)
#t.test
t.test(trees$Height, mu = 70)

add <- c(44.6, 18.9, 29.3, 25.2, 22.0, 31.9)
noadd <- c(23.8, 67.7, 26.6, 25.1, 21.6, 29.6)
t.test(add, noadd, paired=T, alt = "greater")

#With a p–value of 0.6445, we can conclude that the mpg does not improves with the additive.


library(ggplot2)
library(fpp3)
library(tsibble)
library(tidyverse)
library(fable)
library(tsibble)
library(feasts)
library(lubridate)
library(tsibbledata)
library(TSA) # had to install this one
library(forecast)

install.packages("forecast")

install.packages("TSA")


install.packages("filelock")