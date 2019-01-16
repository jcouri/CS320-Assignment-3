--Assignment #3-2, Joseph Couri, josephmcouri@gmail.com
function InfixToPostfix(str)
 str2 = replace(str)
 return str2
end
arr= {}
arr2= {}
i = 0
j = 0
k = 1

function replace(str)
 c = ''
 for m in string.gmatch(str, "%S+") do
  if m=='+' or m=='-' or m=='*' or m=='/' or m=='%' then 
   if m=='+' or m=='-' then
    if arr[i]==nil then
     push(m)
    else
     enqueue(pop(1))
     push(m)
    end
   else 
    if arr[i]=='*' or arr[i]=='/' or arr[i]=='%' then
     enqueue(pop(1))
     push(m)
    else
     push(m)
    end
   end
  else enqueue(m)
  end
 end
 while(i > 0) do
  enqueue(pop(1))
 end
 while(k<=j) do
  c = c .. dequeue(1)
  c = c .. " "
 end
 return c
end

function push(x)
 i = i+1
 arr[i]=x
end

function pop(x)
 y = arr[i]
 arr[i]=nil
 i = i-1
 return y
end

function enqueue(x)
 j = j+1
 arr2[j]=x
end

function dequeue(x)
 y = arr2[k]
 arr2[k]=nil
 k = k+1
 return y
end


 
