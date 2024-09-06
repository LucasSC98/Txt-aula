select sum(p.QUANTIDADE * p.VALOR) as total
-- v.*, c.nome as cliente, ci.descricao as cidade
from vendas v 

inner join cliente c on v.codcliente = c.codcliente
inner join cidades ci on ci.codcidade = c.codcidade 
inner join itens_venda i on i.codvenda = v.codvenda 
inner join produto p on p.CODIGO = i.codproduto 

where month(v.datavenda) = 1 and year(v.datavenda)= 2023
and c.nome like '%itamar%'
