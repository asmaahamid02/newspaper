<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
header('Access-Control-Allow-Headers: X-Requested-With');
header('Content-Type: application/json');

$host = "localhost";
$db_user = "root";
$db_pass = '1234';
$db_name = "newspaper";

$connection = new mysqli($host, $db_user, $db_pass, $db_name);

if ($connection->connect_error) {
    die('Connection failed: ' + $connection->connect_error);
}

$sql = 'select * from news inner join publishers on news.publisher_id = publishers.id 
order by created_at desc';

$stmt = $connection->prepare($sql);
$exec = $stmt->execute();

$response = [];
if ($exec) {
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $data = [];
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        $response = [
            'data' => $data,
            'status' => 1,
            'message' => 'Found'
        ];
    } else {
        $response = [
            'data' => null,
            'status' => 1,
            'message' => 'No data Found'
        ];
    }
} else {
    $response = [
        'data' => null,
        'status' => 0,
        'message' => 'Something went wrong!0'
    ];
}

echo json_encode($response);