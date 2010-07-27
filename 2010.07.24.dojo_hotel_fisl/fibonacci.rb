def fibonacci numero, lista = []
  numero.times {|n| (n < 2) ? (lista << 1) : (lista << (lista[n-2] + lista[n-1]))}
  lista
end

