<!DOCTYPE html>

<html lang="en">

<head>
  <title>
    Admin
  </title>
</head>

<body class="profile-page sidebar-collapse">
  <?php
  include_once "header.php";

  ?>

  <div class="page-header page-header-xs" data-parallax="true" style="background-image: url('../../assets/img/headeradmin.png');">
    <div class="filter"></div>
  </div>
  <center>
    <h1>รายการจองคิวทันตกรรม</h1>
  </center>
  <br /> <br />
  <div class="container">
    <table class="table table-striped table-dark">
      <thead>
        <tr>
          <th scope="col">รายการทันตกรรม</th>
          <th scope="col">วันที่จอง</th>
          <th scope="col">เวลาที่จอง</th>
          <th scope="col">ชื่อแพทย์</th>
          <th scope="col">สถานะการจอง</th>
          <th scope="col"></th>
        </tr>
      </thead>
      <tbody>
        <?php

        foreach ($DT as $row) {
          echo "<tr>";
          echo "<td>" . $row->dentalname . "</td>";
          echo "<td>" . $row->date . "</td>";
          echo "<td>" . $row->time . "</td>";
          echo "<td>" . $row->nameDoctor . "</td>";
          echo "<td>" . $row->status . "</td>";
          echo "<td><a type='button' class='btn btn-primary btn-round' href='bookings?idDental=" . $row->idDental . "'>ตรวจสอบการจอง</a></td>";
          echo "</tr>";
        }
        ?>
    </table>
  </div>
  <footer class="footer    ">

  </footer>
  <!--   Core JS Files   -->

</body>

</html>