# SOMPORN FINAL GITHUB UPLOAD

อัปโหลดโฟลเดอร์นี้ขึ้น GitHub Repository ได้ทั้งชุด

ไฟล์สำคัญ:
- index.html = โปรแกรมตัวล่าสุด V16
- SOMPORN_SETUP_CLOUD.sql = SQL ตั้งค่าฐานข้อมูล Shared Cloud
- .nojekyll = ใช้กับ GitHub Pages
- README.md = คู่มือย่อ

ลำดับใช้งาน:
1. GitHub: อัปโหลด index.html, .nojekyll, README.md
2. GitHub Settings > Pages > Deploy from branch > main > /(root)
3. Supabase: เปิด SQL Editor แล้ว Run SOMPORN_SETUP_CLOUD.sql
4. เปิดเว็บจาก GitHub Pages
5. ตั้งค่า Supabase Project URL + Publishable/anon key ครั้งเดียวบนคอม
6. กดคัดลอกลิงก์ใช้งาน ส่งให้น้อง
7. คอมนำเข้าข้อมูล -> Cloud อัตโนมัติ
8. มือถือรีเฟรช -> เห็นข้อมูล
9. มือถือบันทึก -> คอมรีเฟรช -> เห็นข้อมูล
10. คอม Export CSV

ตัวล่าสุด:
- ภาพดาวเทียมเป็นค่าเริ่มต้น
- ค้นหารหัสแปลงอยู่ด้านบน
- แก้ไข/ลบสิ่งปลูกสร้างได้
- Export CSV
- Backup/Restore JSON
- Shared Cloud แบบไม่ต้อง Login
