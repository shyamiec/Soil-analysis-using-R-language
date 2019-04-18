# Soil-analysis-using-R-language
To predict nutrient power of for specific soil on the basis of study of soil and Machine learning concept(Multiple Linear Regression).   

Role of Agriculture Scientist:

There are many Role of agricultural scientist for soil analysis in project, are given below.
1.	Contact to farmer and take soil sample from his field.
2.	Test each sample in lab and evaluate the value of each attribute.
3.	Make a sheet of datasets of each sample known as test data.
4.	Study of particular soil and make a train data by stablishing a relationship between Y (nutrient power %) and X (each attribute of soil) as dependent and independent attribute of Train dataset.
5.	With the help of train and test, he/she perform analysis and give final result of average nutrient power of soil samples. 

Way of analysis:
1.	Tools and technology:
Technology: machine learning, mathematical statistic, data interpretation
Software: R Studio (version 1.2.1335), M.S.Excel, M.S.Word
Language: R programming 
Operating System: Windows 10

2.	Preparation of train data:
We can study North coast soil to prepare train dataset because test data is also same as in which we can see that nutrient element are ranges in these format, are given below.

Study:
Ph:  upto -7
CEC: upto-15
Phosphorous: upto-100
Potassium: upto-365
Calcium: upto-1400
Magnesium: upto-500
Nitrogen: upto-90
Lime index: upto-73
 
CEC: is part of soil test which is calculated from level of K, Mg, Ca, Na and H.
 
     CEC= (K/390+Mg/120+Ca/200+Na/230+H/1)
On the basis of these study, we have prepared train data to build model to find unknown nutrient power of soil. 
            Example of Bank policy to provide loan:
            A bank policy to provide loan is given below on the basis of percentage criteria: 
1.	Less than 23% of nutrient power -> 5000 rupees loan per 100 sq. feet
2.	24% to 52% of nutrient power ->¬ 9200 rupees loan per 100 sq. feet
3.	53 to 72 % of nutrient power ¬-> 14400 rupees loan per 100 sq. feet
4.	Above than 72% of nutrient power -> 16000 rupees loan per 100 sq. feet
         # A farmer field nutrient power is 71% then bank will provide loan 14400 rup. Loan per           100 sq. feet.

3.	Steps of analysis:

Degree of relationship:
  As per relationship among the attribute of train dataset (train_soil.csv) Y (average nutrient power %) is dependent variable and xi (pH, CEC, phosphorous, potassium, calcium, magnesium, nitrogen and lime index) are independent variable. 
   On the basis of these variable, it is seen that there is many to one (1: M) relationship.


Mathematical view:
 Y is dependent var. and Xi are independent var , so mathematics function is
   
     Y=b+(b1*X1)+(b2*X2)+(b3*X3)+(b4*X4)+(b5*X5)+…….
Where b is intercept and 
b1, b2, b3….are regression coefficient.

Machine learning and analysis:
 As per mathematical view of train data, we decide to perform one of the supervised learning method named as Multiple linear regression to make prediction for test data that have same concept of task.

 First, we have to build a model on the basis of concept of multiple linear regression and decide to test data to test the nutrient power of soil samples.
 Average nutrient power of soil samples is known as expected nutrient power of soil samples. 


Result of Analysis:
After over all analysis of data with the help of test data (soil.csv), final average nutrient power percentage is calculated.
 As per our test data of north coast soil, final average nutrient power is 71.61433 % of farmer field with 94.82 accuracy.
   
