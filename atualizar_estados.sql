-- Update
update estados
set nome = 'Maranhão'
where sigla = 'MA';

select * from estados;

update estados
set nome = 'Paraná', populacao = 11.32
where sigla = 'PR';