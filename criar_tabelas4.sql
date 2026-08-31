-- LAWgico GTT — clientes reais (multi-cliente) + campos completos de Empregados

insert into public.gtt_clientes (nome, slug, cnpj, segmento, status) values
  ('Alpha Tecnologia e Serviços Ltda', 'alpha-tecnologia', '12.345.678/0001-95', 'Tecnologia', 'Ativo'),
  ('Souza Cruz Ltda.', 'souza-cruz', '33.009.911/0001-39', 'Outro', 'Ativo'),
  ('Syngenta Proteção de Cultivos Ltda.', 'syngenta', '60.744.463/0001-90', 'Outro', 'Ativo'),
  ('Whirlpool SA', 'whirlpool', '59.105.999/0001-86', 'Outro', 'Ativo')
on conflict (slug) do nothing;

alter table public.gtt_empregados add column if not exists cpf text;
alter table public.gtt_empregados add column if not exists email text;
alter table public.gtt_empregados add column if not exists telefone text;
alter table public.gtt_empregados add column if not exists data_admissao date;
alter table public.gtt_empregados add column if not exists data_demissao date;
alter table public.gtt_empregados add column if not exists data_nascimento date;
alter table public.gtt_empregados add column if not exists tipo_contrato text;
alter table public.gtt_empregados add column if not exists score_compliance numeric;
alter table public.gtt_empregados add column if not exists local_prestacao_servico text;
alter table public.gtt_empregados add column if not exists estado text;
alter table public.gtt_empregados add column if not exists cidade text;

NOTIFY pgrst, 'reload schema';
