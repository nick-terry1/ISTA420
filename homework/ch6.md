## sql hw ch6
#### author: nick terry
#### date: mar 10, 2018  

1. Set operators combine rows from two query result sets.  

2. There cant be an order by clause in any of the sets. Input queries must have same number of columns and compatable data types.  

3. A venn diagram is two or more circles that demonstrate the individual characteristics and shared characteristics of all items.  

4. The union operator returns the results that are unique and therefore the diagram looks like two circles that overlap partly.  

5. The union all operator returns everything and looks like two circles that dont overlap at all.  

6. The intersect operator returns only distinct shared rows. The diagram looks like only the overlapped portion of the circles.  

7. Intersect all would probably return the same results twice.  

8. The except operator returns only results that are in the first query but not in the rest, diagram looks like a portion of the first circle that doesnt overlap with any others.  

9. Except all would probably return both circles' non shared results.  

10. The precedence of set operators are INTERSECT then EXCEPT and UNION which ever comes first.