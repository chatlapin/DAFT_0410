![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Understanding descriptive stats
This lab will guide you to a better understanding of basic descriptive statistics. You will learn how to compute the basic descriptive metrics and compare them in different use cases. 

## Getting Started

Open the `main.ipynb` file. There are a bunch of questions to be solved. Read each instruction carefully and provide your answer beneath it.

Remember that **some of the questions are not about coding**. **You will need to provide some analysis reasoning**.

## Deliverables

- `main.ipynb` with your responses to each of the exercises.

## Submission

* Central Limit Theorem

* Week 4: Module 2
* Day 3

Confidence Intervals
Probability Distributions
Central Limit Theorem
Hypothesis Testing and Statistical Significance
Two Sample Hypothesis Tests with Scipy
LAB | Two Sample Hypothesis Tests
LAB | Hypothesis Testing (challenges 1 and 3 only)
Various statistical concepts
Daily Materials
Central Limit Theorem

* LESSON
* Learning Goals

* Understand the difference between descriptive and inferential statistics
* Understand what is the Central Limit Theorem and why it is important to data analysis
* Background: Descriptive vs. Inferential Statistics
* So far, we have learned how to describe some key qualities of a dataset that we have at hand-- or, the descriptive statistics of the specific sample of the population to which we have access. We have explored measures of centrality, such as the mean, median, and mode, as well as measures of dispersion like the minimum, maximum, and range, and measures of variability like the variance and standard deviation. But what if we would like to be able to infer some characteristics about the whole population and not just the sample we have? This is the role of inferential statistics. Let's take a look at the different types of questions that descriptive and inferential statistics answer: 
*descriptive vs. inferential statistics
* descriptive
* A sports team calculates their scoring average for their last season.
* A company wants to know the average weekly amount they spend on coffee in their office
* A politician wants to know the number of votes he received in the last election.
* inferential statistics
* A sports team wants to estimate their chances of winning the championship based on their season scoring averages and that of their opponents.
* A company wants to predict how much money they will spend on coffee in the upcoming year, based on this year's coffee consumption.
* A politician would like to estimate his chances of winning the next election based on opinion polls.
* To understand how to move from descriptive to inferential statistics, let's consider an example. Suppose that we would like to calculate what is the average height of students in our Data Analytics class, and its distribution (do most people fall very close to the mean, or are they more widely dispersed around it? Are two groups of data students perhaps, those that are generally short and those who are generally tall?).
*To find this out, we would start by measuring each student, adding the values we found for their heights, and dividing by the number of students in the class. This is just calculating the average height for all students in our class. Similarly, if we wanted to calculate the average height of data students in all of Ironhack's campuses, we would measure all students at each campus, add their heights, and divide by the number of students at all campuses. 
*But what if we wanted to know about the average height of the population of all data bootcamp students in the entire world, not just at Ironhack? It would be impossible to measure the heights of all students in all bootcamps everywhere-- therefore we need to develop a mechanism to infer what is the mean of this population.
One approach we might take is to randomly select a sample of data students from around the world to measure. When we select randomly from all campuses of all bootcamps, each student has an equal chance of being picked to be included in our sample. Through randomization, we are essentially trying to approximate the population on a smaller scale (and with less work).
* Now that we have taken one randomized sample, what can we say about the population of all data students at all bootcamps? Nothing! We are trying to infer information about the whole population from just one small sample. We need to do more than just describe our sample in order to infer the characteristics of our population. We need to engage in a process called estimating. 
* Now, what if we took several samples from our population? Would we be able to achieve an infer then? To simplify, let's consider the case of flipping a coin 10 times. We know that the probability of getting heads for each of the 10 flips is very small: because each flip is an independent event (the outcome of one is not related to the outcome of the previous or following) we can multiply the probability of getting a head in each flip times itself, for the number of flips, to calculate the probability of all flips coming up heads. Mathematically this looks like:
* While we get the result that the likelihood of flipping 10 heads in a row is very small (we would expect this to happen just .0098% of the time!), it can still happen. If we make our sample larger, moving from 10 flips to 20, 50, or 100, the likelihood of them all coming up heads get smaller and smaller, but still exists. This is why we try to make our samples as large as we can. But in the case that we do have "bad luck" in picking our sample, we could think that the heights of data students are really quite different from what they are on aver. Aside from drawing a larger sample, another way we can combat the problem of 'accidentally' drawing a not-representative sample is to draw multiple samples from the same population and then average the averages that we obtain from those samples. 
* It is important to note that random selection does not necessarily mean that the sample will be representative of the population. Just like it is possible that if you toss a coin 100 times they will all turn up heads, it is possible that we randomly select a population that has very different properties, and is entirely not representative of the population. But just like the case of 100 heads in a row, this is an unlikely situation, and even more unlikely the bigger that we make our sample (it is harder to get 10000 heads in a row than 10). 
* In short, we want to:
* Draw random samples with replacement and calculate their mean
* Calculate the mean of the sample means
* If we repeat this process of selecting a random sample and calculating the mean, these sample means will begin to form their own distribution. We call this distribution the sampling distribution because it is created by aggregating the means across repeated samples of our population. Let's look at the progression of our sample distribution as we increase the number of samples we take from the population. 
* In this first code block, we create a population with a mean and standard deviation that we are specifying-- the mean height for this population (our data students) is 1.73 meters. In reality, these population parameters are unknown, but we are specifying them here in order to explore the relationship between the population and sample. 

* Here,  we can see that our population seems to be normally distributed around the mean (we have constructed it this way using np.random.normal() and passing it the population mean).

* Next, we pull random samples from our population, of increasing sizes, and plot them in a histogram to examine their distribution. First, starting with a sample of 50:

* Now, lets examine each of these sample:

* We can see in the diagrams that as we add more and more samples, the distribution begins to look like a normal (bell-shaped) distribution. This tendency is fundamental to statistics and is called the Central Limit Theorem. The Central Limit Theorem states that given a population for which we do not know the distribution (such as the heights of all data students, globally), as we draw more samples from the population, the distribution of the sample means approaches a normal distribution and converges to the theoretical values of the underlying population distribution. This is true for all populations, no matter the shape of the population distribution.  
* So how does this theorem help us? It creates a connection between the sample and the population-- which is essential for us to be able to make inferences about a population that is too large to measure.
* As we saw in the above diagrams, the mean of the sampling distribution will be approximately the population mean, and will become equal to the sample mean as the number of samples gets very large.
* As the number of samples we take, and the size of those samples, increase, the better we approximate the true population mean. This makes sense that each time we resample the population or increase our sample size, we are obtaining more information about our population: at some point, we will have sampled our entire population, so the parameters from our sample will be exactly equal to those of our population. Simply: the statistical inferences we make about our population get better the more data we gather.
* In later lessons, we will see how the idea that "more data means better estimation" translates to the level of certainty, or confidence, we have in our estimates. 
* Lesson Recap
* The more, and larger samples we gather from our population, the better are our inferences about the parameters of our population.  
* Central Limit Theorem: The distribution of the sample means approaches a normal distribution, and converges to the theoretical parameter values of the underlying population distribution. 
