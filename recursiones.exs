defmodule RecursionListas do
  
#map
def dobles([]) do
    IO.inspect []
   []
  end

  def dobles([hd | tl]) do
    IO.inspect hd
    [hd * 2 | dobles(tl)]
  end

#filter 
 def pares([]), do: []
 def pares([hd | tl]) when rem(hd, 2) == 0, do: [hd | pares(tl)] 
 def pares([hd | tl]), do: pares(tl) 

#reduce

 defp suma([], acc), do: acc
 defp suma([hd | tl], acc), do: suma(tl, acc + hd)  
 def suma(lista), do: suma(lista,0) 
end
