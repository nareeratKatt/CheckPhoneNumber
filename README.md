# CheckPhoneNumber
## MounteBank
- สำหรับการ Mock Api ที่ใช้ในการเช็คเบอร์โทรศัพท์

## Robot Framework
ใช้สำหรับทดสอบ MounteBank ที่สร้างขึ้นมาโดยมี case ดังนี้ <br>
> Case 1 : ทดสอบหมายเลขโทรศัพท์ที่ขึ้นต้นด้วย 02, 03, 05, 07 <br>
โดยต้องมี Response (success) : home phone<br>

>Case 2 : ทดสอบหมายเลขโทรศัพท์ที่ขึ้นต้นด้วย 06, 08, 09 <br>
โดยต้องมี Response (success) : mobile phone<br>

>Case Other : ทดสอบหมายเลขโทรศัพท์ที่ไม่ได้ขึ้นต้นด้วยเลข 0 <br>
โดยต้องมี Response (success) : not match

    