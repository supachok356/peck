<?php
// ตัวอย่างข้อมูลการแข่งขัน
$matches = [
    [
        'team1' => 'France',
        'team2' => 'Germany',
        'score1' => 2,
        'score2' => 1,
        'date' => '2024-06-14'
    ],
    [
        'team1' => 'Italy',
        'team2' => 'Spain',
        'score1' => 1,
        'score2' => 1,
        'date' => '2024-06-15'
    ],
    [
        'team1' => 'Portugal',
        'team2' => 'Netherlands',
        'score1' => 0,
        'score2' => 2,
        'date' => '2024-06-16'
    ]
];

// แสดงผลการแข่งขัน
echo "<h1>ผลการแข่งขันฟุตบอลยูโร 2024</h1>";
foreach ($matches as $match) {
    echo "<p>" . $match['date'] . ": " . $match['team1'] . " " . $match['score1'] . " - " . $match['score2'] . " " . $match['team2'] . "</p>";
}

// ตรวจสอบผลการแข่งขันและแสดงผลทีมที่ชนะ
echo "<h2>ทีมที่ชนะในแต่ละแมตช์</h2>";
foreach ($matches as $match) {
    if ($match['score1'] > $match['score2']) {
        echo "<p>ทีมที่ชนะ: " . $match['team1'] . "</p>";
    } elseif ($match['score1'] < $match['score2']) {
        echo "<p>ทีมที่ชนะ: " . $match['team2'] . "</p>";
    } else {
        echo "<p>เสมอ: " . $match['team1'] . " vs " . $match['team2'] . "</p>";
    }
}

// คำนวณคะแนนของแต่ละทีม
$teams = [];
foreach ($matches as $match) {
    if (!isset($teams[$match['team1']])) {
        $teams[$match['team1']] = 0;
    }
    if (!isset($teams[$match['team2']])) {
        $teams[$match['team2']] = 0;
    }
    if ($match['score1'] > $match['score2']) {
        $teams[$match['team1']] += 3; // ทีม1 ชนะได้ 3 คะแนน
    } elseif ($match['score1'] < $match['score2']) {
        $teams[$match['team2']] += 3; // ทีม2 ชนะได้ 3 คะแนน
    } else {
        $teams[$match['team1']] += 1; // เสมอได้ 1 คะแนน
        $teams[$match['team2']] += 1; // เสมอได้ 1 คะแนน
    }
}

// แสดงคะแนนของแต่ละทีม
echo "<h2>คะแนนของแต่ละทีม</h2>";
foreach ($teams as $team => $points) {
    echo "<p>ทีม: $team, คะแนน: $points</p>";
}
?>
