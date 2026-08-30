# SOMPORN MOBILE CLOUD V12 CONNECT-FIX

แก้ Cloud connect:
- Supabase JS มี CDN สำรอง jsDelivr + unpkg
- ตรวจว่ Library โหลดจริงก่อน createClient
- ปุ่ม “ทดสอบ Cloud”
- Health check ตาราง somporn_org_state แบบตรง ๆ
- ข้อความ error ชัดเจน
- ถ้า health check ไม่ผ่าน จะไม่ pull ต่อให้ระบบรวน
- UI / Multi-Org / delete parcel / fast pin เดิมยังอยู่

ถ้ายังเชื่อมไม่ได้:
กด “ทดสอบ Cloud” แล้วดูข้อความมุมขวาบน
