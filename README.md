# SOMPORN Multi-Org Parcel Manager V10

## เพิ่มใน V10
- สำรองข้อมูลทั้งหมดเป็น JSON ไฟล์เดียว
- กู้คืนข้อมูลทั้งหมดจาก JSON
- สำรองครบ:
  - อปท.
  - Layer แปลงที่ดิน
  - สิ่งปลูกสร้าง
  - จุดสถานะสำรวจ
- ชื่อไฟล์สำรองอัตโนมัติ:
  SOMPORN_BACKUP_YYYY-MM-DD_HHMM.json

## วิธีใช้ภาคสนาม
1. ใช้ Browser/เครื่องเดิม
2. สำรวจและบันทึกข้อมูลตามปกติ
3. ก่อนเลิกงาน กด "สำรองข้อมูลทั้งหมด"
4. เก็บไฟล์ JSON ไว้ใน Downloads / Google Drive
5. Export building.csv และ survey_status.csv เพิ่มอีกชุด
6. หากเปลี่ยนเครื่องหรือข้อมูลหาย:
   - เปิดเว็บ V10
   - กด "กู้คืนข้อมูล"
   - เลือกไฟล์ SOMPORN_BACKUP_....json

## GitHub Pages
อัปโหลด index.html และ .nojekyll ไปที่ repository root
Settings > Pages > Deploy from a branch > main > /(root)
