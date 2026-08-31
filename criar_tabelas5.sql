-- LAWgico GTT — colunas que faltavam em Processos de Terceiros (existem na
-- planilha original mas não tinham sido carregadas): polo ativo/passivo,
-- valor de acordo, tipo de desfecho, apólice, decisões por instância, juízes,
-- nome/cpf do empregado, último salário, admissão/demissão e se a terceira
-- está ativa/inativa/nunca integrou o GTT. Essas colunas são o que faltava
-- pra montar o quadro "Ações de Terceiros x Ações da Tomadora" e "empresas
-- ativas/inativas/nunca estiveram no GTT" do relatório modelo da proposta.

alter table public.gtt_processos add column if not exists valor_acordo numeric;
alter table public.gtt_processos add column if not exists partes_polo_ativo text;
alter table public.gtt_processos add column if not exists partes_polo_passivo text;
alter table public.gtt_processos add column if not exists tipo_desfecho text;
alter table public.gtt_processos add column if not exists data_apolice date;
alter table public.gtt_processos add column if not exists decisoes_por_instancia text;
alter table public.gtt_processos add column if not exists juizes text;
alter table public.gtt_processos add column if not exists nome_cpf_empregado text;
alter table public.gtt_processos add column if not exists ultimo_salario numeric;
alter table public.gtt_processos add column if not exists admissao_demissao_raw text;
alter table public.gtt_processos add column if not exists terceira_ativa_no_gtt text;

NOTIFY pgrst, 'reload schema';
