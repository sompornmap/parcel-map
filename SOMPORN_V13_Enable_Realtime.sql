-- SOMPORN V13 Shared Realtime
-- ใช้บัญชี Supabase Login กลาง 1 บัญชีบนทุกอุปกรณ์
-- Run ใน Supabase SQL Editor หลังสร้างตารางจาก V12 หรือใช้ชุดนี้กับตารางเดิม

-- เปิด Realtime ให้ตารางหลัก
do $$
begin
  begin
    alter publication supabase_realtime add table public.orgs;
  exception when duplicate_object then null;
  end;
  begin
    alter publication supabase_realtime add table public.layers;
  exception when duplicate_object then null;
  end;
  begin
    alter publication supabase_realtime add table public.buildings;
  exception when duplicate_object then null;
  end;
  begin
    alter publication supabase_realtime add table public.surveys;
  exception when duplicate_object then null;
  end;
end $$;

-- หมายเหตุ:
-- V13 ไม่ต้องใช้ org_members ในการทำงาน
-- ให้คอมและมือถือทุกเครื่อง Login ด้วยบัญชี Supabase เดียวกัน
-- RLS เดิมจะมองทุกเครื่องเป็น owner คนเดียวกัน จึงอ่าน/เขียนข้อมูลชุดเดียวกันได้
