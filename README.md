# SOMPORN MOBILE CLOUD V5 READY

Supabase URL + Publishable Key ถูกฝังไว้ใน index.html แล้ว
ผู้ใช้งานไม่ต้องกรอกค่า Cloud อีก

การทำงาน:
- เปิดเว็บ -> เชื่อม Cloud อัตโนมัติ
- คอมนำเข้า KML/GeoJSON -> ส่งขึ้น Cloud ทันที
- มือถือเปิด/รีเฟรช -> โหลดข้อมูลกลาง
- มือถือเพิ่ม/แก้ไข/ลบ -> ส่งขึ้น Cloud
- คอมรีเฟรช -> เห็นข้อมูลล่าสุด
- Export CSV จากคอม

ถ้าฐาน Supabase ยังไม่มีตาราง somporn_shared_state:
Run SOMPORN_SETUP_CLOUD.sql หนึ่งครั้งใน Supabase SQL Editor
