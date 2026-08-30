-- SOMPORN V10 ORG-SAFE
-- Run once in Supabase SQL Editor.

create table if not exists public.somporn_org_state (
  org_id text primary key,
  org_name text,
  updated_at timestamptz not null default now(),
  data jsonb not null default '{}'::jsonb
);

alter table public.somporn_org_state enable row level security;

grant select,insert,update,delete on public.somporn_org_state to anon;

drop policy if exists somporn_org_read on public.somporn_org_state;
drop policy if exists somporn_org_insert on public.somporn_org_state;
drop policy if exists somporn_org_update on public.somporn_org_state;
drop policy if exists somporn_org_delete on public.somporn_org_state;

create policy somporn_org_read
on public.somporn_org_state for select to anon using (true);

create policy somporn_org_insert
on public.somporn_org_state for insert to anon with check (true);

create policy somporn_org_update
on public.somporn_org_state for update to anon using (true) with check (true);

create policy somporn_org_delete
on public.somporn_org_state for delete to anon using (true);
