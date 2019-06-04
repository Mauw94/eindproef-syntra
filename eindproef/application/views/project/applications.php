<div class="container">
    <h1 class="menu-title">Applications</h1>
    <div class="login-underline"></div>
    <div id="accordion" class="company-landing">
    <h3><?php echo $msg;?></h3>
    
        <?php 
        if ($applications) {
        foreach($applications as $key=>$appl) { ?>
          <div class="card" style="margin-top: 30px;">
            <div class="card-header" id="headingOne">
            <h5 class="mb-0">
                <button class="btn btn-info" data-toggle="collapse" data-target="#collapse<?php echo $key;?>" aria-expanded="true" aria-controls="collapseOne">
                <?php echo $appl[0]->name; ?>
                </button>                
                <a href="<?php echo base_url();?>user/remove_application/<?php echo $appl[0]->id;?>" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                <a href="<?php echo base_url();?>project/details/<?php echo $appl[0]->id;?>/<?php echo $companies[$key][0]->id;?>" class="btn btn-info" style="float:right;">Details</a>
            </h5>
            </div>
    
            <div id="collapse<?php echo $key;?>" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">
                    <?php echo $appl[0]->description;?>

                    <!-- show company info here too -->
                    <hr>
                    <h5>Company info</h5>
                    <ul>
                        <li>Name: <i><?php echo $companies[$key][0]->name;?></i></li>
                        <li>Phone nr: <i><?php echo $companies[$key][0]->phone;?></i></li>
                        <li>E-mail: <i><?php echo $companies[$key][0]->email;?></i></li>
                    </ul>
                </div>
            </div>
        </div>  
        <?php }
        } else {
            echo 'No applications found.';
        } ?>
    </div>
</div>