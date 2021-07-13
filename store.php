
<?php
    $role_session = mi_get_session('role');
    if ($role_session['orders'] != 1){
        mi_redirect(MI_BASE_URL.'admin/index.php');
    }
?>
<?=mi_header();?>
<?=mi_sidebar();?>
<?=mi_nav();?>
    <!-- Main container -->
    <main>

        
        <?php
        
        ?>

<div class="container" style="padding-bottom:50px;">
    <table class="table table-striped table-hover">
    <thead>
        <tr>
        <th scope="col">Sr. No</th>
        <th scope="col">Store id</th>
        <th scope="col">Store name</th>
        <th scope="col">Store manager</th>
        <th scope="col">Store address</th>
        <th scope="col">Date & day</th>
        </tr>
 
    </thead>
    <tbody>
        <?php
        $i=0;
        $sql = "SELECT * FROM `stores` ORDER BY `created` ";
        $result = mysqli_query(mi_db(), $sql);
        while($row = mysqli_fetch_assoc($result)){
            $noResult = false;
            $store_id = $row['store_id'];
            $store_name = $row['store_name'];
            $store_manager = $row['store_manager'];
            $store_address = $row['store_address'];
            $store_created = $row['created'];            
       
        
           
        
            echo'
                <tr>
                    <th scope="row">';?><?php echo$i=$i+1; echo'</th>
                    <td>'.$store_id.'</td>
                    <td>'.$store_name.'</td>
                    <td>'.$store_manager.'</td>
                    <td>'.$store_address.' </td>                   
                    <td>'.$store_created.' </td>     
                </tr>
                ';
        }
        ?>
    </tbody>
        </table>
        </div>
      <?=mi_include('footer_extra.php');?>
    </main>
    <!-- END Main container -->


<?=mi_footer();?>
