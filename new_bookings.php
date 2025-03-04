<?php

  require('../inc/db_config.php');
  require('../inc/essentials.php');
  adminLogin();

  if(isset($_POST['get_bookings']))
  {
    $frm_data = filteration($_POST);

    $query = "SELECT bo.*, bd.* FROM `booking_order` bo
      INNER JOIN `booking_details` bd ON bo.booking_id = bd.booking_id
      WHERE (bo.order_id LIKE ? OR bd.phonenum LIKE ? OR bd.user_name LIKE ?)
      AND (bo.booking_status = ? AND bo.arrival = ?) ORDER BY bo.booking_id ASC";
    
    $res = select($query,["%$frm_data[search]%","%$frm_data[search]%","%$frm_data[search]%","pending",0],'sssss');
    $i=1;
    $table_data = "";

    if(mysqli_num_rows($res)==0){
      echo"<b>No Data Found!</b>";
      exit;
    }

    while($data = mysqli_fetch_assoc($res))
    {
      $date = date("d-m-Y",strtotime($data['datentime']));
      $checkin = date("d-m-Y",strtotime($data['check_in']));
      $checkout = date("d-m-Y",strtotime($data['check_out']));

      // if($data['booking_status']=="booked"){
      //   $status = "<button onclick='toggle_status($data[booking_id],0)' class='btn btn-dark btn-sm shadow-none'>Paid</button>";
      // }
      // else{
      //   $status = "<button onclick='toggle_status($data[booking_id],1)' class='btn btn-warning btn-sm shadow-none'>Pending</button>";
      // }

      // <button onclick='toggle_status($data[booking_id],0)' class='btn btn-dark btn-sm shadow-none'>Pending</button>

      $table_data .="
       <tr>
          <td>$i</td>
          <td>
            <span class='badge bg-primary'>
             Order ID: $data[order_id]
            </span>
            <br>
            <b>Name: </b> $data[user_name]
            <br>
            <b>Phone: </b> $data[phonenum]
          </td>
          <td>
            <b>Pax: </b> $data[room_name]
            <br>
            <b>Price: </b> $data[price] php
          </td>
          <td>
            <b>Check-in: </b> $checkin
            <br>
            <b>Check-out: </b> $checkout
            <br>
            <b>Paid: </b> $data[total_pay]
            <br>
            <b>Date: </b> $date
          </td>
          <td>

          <button type='button' onclick='confirm_booking($data[booking_id])' class='mt-2 btn btn-outline-success btn-sm  fw-bold shadow-none'>
            Confirm Booking
          </button>
          <br> 

          <button type='button' onclick='cancel_booking($data[booking_id])' class='mt-2 btn btn-outline-danger btn-sm  fw-bold shadow-none'>
            <i class='bi bi-trash'></i>Cancel Booking
          </button>
          </td>
       </tr>
      ";

      $i++;
    }
  
    echo $table_data;
  }

  //not needed
  if(isset($_POST['assign_room']))
  {
    $frm_data = filteration($_POST);

    $query = "UPDATE `booking_order` bo INNER JOIN `booking_details` bd
     ON bo.booking_id = bd.booking_id
     SET bo.arrival = ?, bo.rate_review = ?, bd.room_no = ?
     WHERE bo.booking_id = ?";

    $values = [1,0,$frm_data['room_no'],$frm_data['booking_id']];

    $res = update($query,$values,'iisi');//updates 2 rows hence returns 2

    echo ($res==2) ? 1 : 0;
  }
  //

  if(isset($_POST['confirm_booking']))
  {
    $frm_data = filteration($_POST);
   
    $query = "UPDATE `booking_order` SET `booking_status`=? WHERE `booking_id`=?";
    $values = ['booked',$frm_data['booking_id']];
    $res = update($query,$values,'si');

    echo $res;
  }

  if(isset($_POST['cancel_booking']))
  {
    $frm_data = filteration($_POST);
   
    $query = "UPDATE `booking_order` SET `booking_status`=?, `refund`=? WHERE `booking_id`=?";
    $values = ['cancelled',0,$frm_data['booking_id']];
    $res = update($query,$values,'sii');

    echo $res;
  }

  // if(isset($_POST['toggle_status']))
  //  {
  //   $frm_data = filteration($_POST);
 
  //  $query = "UPDATE `booking_order` SET `booking_status`=?, `refund`=? WHERE `booking_id`=?";
  //  $values = ['booked',0,$frm_data['booking_id']];
 
  //   if(update($query,$values,'ii')){
  //    echo 1;
  //   }
  //   else{
  //    echo 0;
  //   }
  //  }


  // if(isset($_POST['toggle_status']))
  // {
  //  $frm_data = filteration($_POST);

  //  $query = "UPDATE `booking_order` SET `booking_status`=?, `refund`=? WHERE `booking_id`=?";
  //  $values = ['booked',0,$frm_data['booking_id']];
  //  $res = update($query,$values,'sii');

  // //  $q = "UPDATE `rooms` SET `status`=? WHERE `id`=?";
  // //  $v = [$frm_data['value'],$frm_data['toggle_status']];

  //  if(update($query,$values,'ii')){
  //   echo 1;
  //  }
  //  else{
  //   echo 0;
  //  }
  // }


?> 