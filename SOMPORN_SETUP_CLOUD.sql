-- SOMPORN V15 SIMPLE SHARED CLOUD
-- เป้าหมาย: ไม่มี Login / ไม่มีทีมงาน / ทุกเครื่องใช้ลิงก์เดียวกัน
-- Run หลังจากสร้างตาราง V12 แล้ว

-- ให้ owner_id ว่างได้ เพราะ V15 ไม่ใช้ระบบ Login
alter table public.orgs alter column owner_id drop not null;

-- เปิดสิทธิ์ anon สำหรับเว็บที่แชร์ลิงก์
grant select,insert,update,delete on public.orgs, public.layers, public.buildings, public.surveys to anon;

-- ลบนโยบายเดิมที่อิงผู้ใช้
drop policy if exists orgs_select on public.orgs;
drop policy if exists orgs_insert on public.orgs;
drop policy if exists orgs_update on public.orgs;
drop policy if exists orgs_delete on public.orgs;
drop policy if exists layers_select on public.layers;
drop policy if exists layers_write on public.layers;
drop policy if exists buildings_select on public.buildings;
drop policy if exists buildings_insert on public.buildings;
drop policy if exists buildings_update on public.buildings;
drop policy if exists buildings_delete on public.buildings;
drop policy if exists surveys_select on public.surveys;
drop policy if exists surveys_insert on public.surveys;
drop policy if exists surveys_update on public.surveys;
drop policy if exists surveys_delete on public.surveys;

-- Shared policies: ใครที่มีลิงก์เว็บและ publishable key ใช้งานข้อมูลชุดนี้ได้
create policy orgs_shared_all on public.orgs for all to anon using (true) with check (true);
create policy layers_shared_all on public.layers for all to anon using (true) with check (true);
create policy buildings_shared_all on public.buildings for all to anon using (true) with check (true);
create policy surveys_shared_all on public.surveys for all to anon using (true) with check (true);

-- เปิด realtime
do $$
begin
  begin alter publication supabase_realtime add table public.orgs; exception when duplicate_object then null; end;
  begin alter publication supabase_realtime add table public.layers; exception when duplicate_object then null; end;
  begin alter publication supabase_realtime add table public.buildings; exception when duplicate_object then null; end;
  begin alter publication supabase_realtime add table public.surveys; exception when duplicate_object then null; end;
end $$;
