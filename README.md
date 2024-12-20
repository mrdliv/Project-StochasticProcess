## Analysis of ATM Queuing Problem

Download and read the **final paper**: [https://bit.ly/Paper-StochasticProcess](url) 

Watch the **presentation**: [bit.ly/Project-StochasticProcess](url)



> **Background Problem**

Automatic Teller Machines (ATMs) play a critical role in providing 24/7 access to financial transactions. However, during peak usage hours, customer queuing and potential overcrowding can affect user satisfaction and system efficiency. This case study examines the dynamics of an ATM system where customers arrive randomly over time, with the arrival process following a Poisson distribution at a rate 𝜆 and some constraints as follows:
1. 	The space in front of the ATM can accommodate at most 10 customers. Thus, if there are 10 customers already waiting and a new customer arrives, the customer walks away and is lost forever. 
2. 	The customers form a single line and use the ATM in a first-come, first-served fashion. 
3. 	The processing times at the ATM for the customers are independent and identically distributed (iid) exponential random variables with rate μ. Let X(t) be the number of customers at the ATM at time t.
This study uses historical ATM usage data from 2024, sourced from its.id/prosto2024, to analyze and model the queueing behavior. The goal is to answer critical questions regarding system dynamics, including transition rates, queue probabilities, idle times, and long-term behavior, as well as evaluating the system’s economic performance. By understanding the dynamics of 𝑋(𝑡) as a CTMC, we aim to address operational challenges, such as minimizing customer loss and ensuring efficient ATM utilization, while also exploring profitability through various transaction fee scenarios.

> **Problem Questions**

1.	How can we define the states of the Markov chain representing the ATM queue and the transition rates between these states? How can the rate diagram be drawn?
2.	How can the rate matrix and generator matrix for the CTMC describing the ATM queue system be derived?
3.	How can the distribution of the inter-arrival times and service times of the ATM machine be visualized using historical data?
4.	How can the average inter-arrival times and service times for the ATM system be calculated?
5.	How can the parameters 𝜆 (arrival rate) and 𝜇 (service rate) of the ATM queue system be estimated using the Maximum Likelihood Estimation (MLE) method?
6.	Estimate the parameters λ and µ using Maximum Likelihood Estimation method. If the ATM queue is empty at 5 AM, what is the probability of having k people in the queue at 7 AM for k = 0, 1, 2, …, 10, and what is the expected queue size?
7.	If the ATM machine is idle at 8:00 AM, what is the expected amount of time the machine remains idle during the next hour?
8.	What is the limiting distribution of the state of the ATM queue system?
9.	 Given the initial investment cost is I = 15,000 dollars, and the annual maintenance cost is M = 1,500 dollars with a total annual operating cost includes:
●	Electricity cost per year: Ce = 1,200 dollars per year, and
●	Transaction processing cost: Ct = 0.25 dollars per transaction.
What is the annual profit and ROI if the transaction fee is set at:
●	Cr = 0.5 dollars
●	Cr = 1 dollars
●	Cr = 2 dollars
for each transaction?

> **Contributors**

- Rosita Adelia Puspitasari
- Fitria Novanti
- Livia Fragrancy Marada (Me) 
- Zelika Anindita Rachman
- Fathia Zahrani Kalila 

