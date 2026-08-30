-- SOMPORN MOBILE CLOUD V4
-- Run once in Supabase SQL Editor.

create table if not exists public.somporn_shared_state (
  id text primary key,
  updated_at timestamptz not null default now(),
  data jsonb not null default '{}'::jsonb
);

alter table public.somporn_shared_state enable row level security;

grant select,insert,update on public.somporn_shared_state to anon;

drop policy if exists somporn_shared_read on public.somporn_shared_state;
drop policy if exists somporn_shared_insert on public.somporn_shared_state;
drop policy if exists somporn_shared_update on public.somporn_shared_state;

create policy somporn_shared_read
on public.somporn_shared_state
for select to anon
using (true);

create policy somporn_shared_insert
on public.somporn_shared_state
for insert to anon
with check (id='shared');

create policy somporn_shared_update
on public.somporn_shared_state
for update to anon
using (id='shared')
with check (id='shared');
