## sql hw ch 7  
#### author: nick terry  
#### date: mar 18, 2018  

1. A window function is a function that for each row computes a scalar result value based on a calculation against a subset 
of the rows from the underlying query.  

2. A partition restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row. 

3. Order by defines ordering but is different from the presentation order by clause by this one supports a fram specification. 

4. Rows between filters a frame or a subset or rows from the window partition between the two specified delimeters. 

5. A ranking window function ranks each row with respect to other rows in the window. Its helpful if you want to rank all the rows with respect to a value. 
An example of this would be for race results. You could assign places for each of the finishers with respect to their time, assuming there werent any ties 
If there were ties their ranks would be interchangable, but not equal. Unfair to the racers. 

6. An offset window function returns a value a certain distance, either before or after, the specified row. Using the the previous example 
you could find the 50th place racer if you used an offset window function by calling the first racer in the query and writing LAG(50); 

7. Lead and Lag either gives you the value in an offset window function thats a certain number before or after the specified row. 

8. First value and Last value gives you just that in an offset window function. 

9. An aggregate window function aggregates the rows in the defined window. This is useful because it saves me the massive headache that i got from trying to figure 
out the sql exercise from a few weeks ago where I had to find the value of all the sales based on the orderid and find the total percentage. 
An aggregate window function would have made a task like that MUCH easier. 

10. A pivot table changes the rows into columns and can aggregate the values along the way. This is for presentation purposes. 