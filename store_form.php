<?=mi_header();?>
<?=mi_nav();?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>store</title>
   
</head>
<body>
    <div class="container" style="padding-top:100px;">
    <h1>Store</h1>
    <form method="post" >
    <div class="mb-3">
        <label style="font-size:1.3rcm;font-weight:bold;" for="validationTextarea" class="form-label lebel1">Store Name <span style="color:red;font-size:18px;">*</span></label>
        <div class="input-group flex-nowrap">                
            <input name="storename" type="text" class="form-control" placeholder="storename" aria-describedby="inputGroup-sizing-lg" aria-label="storename" aria-describedby="addon-wrapping" required>
        </div>                
    </div>
    <div class="mb-3">
        <label style="font-size:1.3rcm;font-weight:bold;" for="validationTextarea" class="form-label lebel1">Store Manager <span style="color:red;font-size:18px;">*</span></label>
        <div class="input-group flex-nowrap">                
            <input name="storemanager" type="text" class="form-control" placeholder="storemanager" aria-label="live-url" aria-describedby="addon-wrapping" required>
        </div>                
    </div>
    <div class="mb-3">
        <label style="font-size:1.3rcm;font-weight:bold;" for="validationTextarea" class="form-label lebel1">Store Address <span style="color:red;font-size:18px;">*</span></label>
        <div class="input-group flex-nowrap">                
            <input name="storeaddress" type="text" class="form-control" placeholder="storeaddress" aria-label="storeaddress" aria-describedby="addon-wrapping" required>
        </div>                
    </div>
    <button class="btn btn-dark btn-sm m-0 waves-effect waves-light" type="submit" name="submit"  >Submit</button> 
</form>
    </div>
    
</body>
</html>
<?=mi_include('foot.php');?>
<?=mi_footer();?>

<?php
    $method = $_SERVER['REQUEST_METHOD'];
        if (isset($_POST['submit'])) {
            if($method=='POST'){

           // Insert into thread db
            $storename = $_POST['storename'];
            $storemanager = $_POST['storemanager'];
            $storeaddress = $_POST['storeaddress'];
        
            $storename = str_replace("<", "&lt;", $storename);
            $storename = str_replace(">", "&gt;", $storename); 
            $storename = str_replace("'", "\\'", $storename);
        
            $storemanager = str_replace("<", "&lt;", $storemanager);
            $storemanager = str_replace(">", "&gt;", $storemanager); 
            $storemanager = str_replace("'", "\\'", $storemanager);
        
            $storeaddress = str_replace("<", "&lt;", $storeaddress);
            $storeaddress = str_replace(">", "&gt;", $storeaddress); 
            $storeaddress = str_replace("'", "\\'", $storeaddress);
        
            $sno = $_SESSION['sno']; 

            // $sql4 =  " UPDATE `users` SET  `user_score` = `user_score`+$sum WHERE `sno`= $sno ;";
            // $result4 = mysqli_query($conn, $sql4);
            
            // $sql1 =  " UPDATE `users_challenges` SET  `status_challenge` = 'Submited' , `challengename`= ' $challengename' , `liveurl`=' $liveurl' , `codelink` = ' $codelink'  WHERE `user_id` = '$sno' AND `challenge_id` = '$cid'";
            // $result = mysqli_query($conn, $sql1);
            
                
            $sql = "INSERT INTO `stores` (`store_id`, `store_name`, `store_manager`, `store_address`, `created`) VALUES (NULL, '$storename', '$storemanager', '$storeaddress', current_timestamp());";
            $res = mysqli_query(mi_db(), $sql);
        
            if (!$res){
                return mi_error_code(1);
            }else{
                return TRUE;
            }
            mysqli_close(mi_db());
        }
    }
?>