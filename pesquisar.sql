SELECT 
    p.nome_heroi AS "Nome do Personagem", 
    p.alinhamento AS "Alinhamento", 
    e.nome AS "Editora"
FROM personagens p
INNER JOIN editoras e ON p.editora_id = e.id
ORDER BY e.nome, p.nome_heroi;


/*PARA APAARECER O NOME DA EDITORA , E NÃO APENAS '1' E '2'.
