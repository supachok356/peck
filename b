<?php
// ฟังก์ชันเพื่อตรวจสอบจำนวนวันในเดือน
function checkDaysInMonth($month) {
    // อาร์เรย์ของเดือนที่มี 30 วัน
    $months_30_days = ['April', 'June', 'September', 'November'];
    // อาร์เรย์ของเดือนที่มี 31 วัน
    $months_31_days = ['January', 'March', 'May', 'July', 'August', 'October', 'December'];

    // ตรวจสอบเดือนและแสดงผลลัพธ์
    if (in_array($month, $months_30_days)) {
        echo "$month มี 30 วัน";
    } elseif (in_array($month, $months_31_days)) {
        echo "$month มี 31 วัน";
    } else {
        echo "$month เป็นเดือนที่ไม่ถูกต้องหรือมี 28/29 วัน";
    }
}

// รับค่าเดือนจากผู้ใช้ (สำหรับตัวอย่างนี้เราจะกำหนดค่าคงที่)
$input_month = 'April';

// เรียกใช้งานฟังก์ชันเพื่อตรวจสอบจำนวนวันในเดือน
checkDaysInMonth($input_month);
?>
