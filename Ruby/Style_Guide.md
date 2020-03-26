1. Uderscores to large numeric literals
num = 1_000_000

2. Use parantheses when there are parameters
def some_method_with_paramth(param1, param2)  
end 

3. Do not use **for**, use iterators. Variables defined in **for** block is visiable outside!
#bad 
for elem in arr do 
	puts elem  
end  

elem => visiable here 

4. Use **!** instead of **not**. 
#bad  
x = not something  
x = !something 


