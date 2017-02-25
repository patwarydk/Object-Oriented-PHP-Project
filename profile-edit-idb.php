
<div id="page-wrapper">
    <div id="page-inner" class=" modal-content">
        <div class="row">
            <div class="col-sm-12">
                <h3 class="page-head-line">Welcome&nbsp;&nbsp;<?php echo $_SESSION['myname']; ?></h3>
                <?php
                            if ($_SESSION['mytype'] == 'a') {
                              echo '<a href="master.php?u=register-view" id="admin"><i class="btn btn-success fa fa-file"> View</i></a>';
                            }
                                ?>
                
                <a href="master.php"><i class="btn btn-danger fa fa-times"> Cancel</i></a>
                <hr>
            </div>
        </div>
        <!-- /. ROW  -->
        <div class="row center">
            <div class="col-md-8 col-md-offset-2 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        Edit Form
                    </div>
                    <div class="panel-body">
                        <?php
                        $u = new dalUsers();
                        $u->Id = $_SESSION['myid'];
                        $data = $u->edit();
                        //print_r($data);
                        ?>
                        <form class="submitphoto_form" method="post" action="master.php?u=register-update" enctype="multipart/form-data">
                            <input  type="hidden" name="id" value="<?php echo $data->id; ?>">
                            <div class="form-group">
                                <label>Full Name: <i class="required">*</i> <i class="fa fa-question-circle" aria-hidden="true" title="min 5 max 30"></i></label>
                                <input type="text" name="name" id="name" class="form-control" placeholder="Your name" value="<?php echo $data->name; ?>"/>
                            </div>
                            <div class="form-group">
                                <label>Email<i class="required">*</i> <i class="fa fa-question-circle" aria-hidden="true" title="min 12" id="epass1"></i></label>
                                <input type="mail"  name="email" id="email" class="form-control" placeholder="Email address" value="<?php echo $data->email; ?>"/>
                                <span id="ava"></span>
                            </div>
                            <div class="form-group">
                                <label>Contact Number<i class="required">*</i> <i class="fa fa-question-circle" aria-hidden="true" title="11 degit" id="epass1"></i></label>
                                <input type="text" name="cont" id="cont" class="form-control" placeholder="Contact Number" value="<?php echo $data->contact; ?>">
                            </div>
                            <?php
                            if ($_SESSION['mytype'] == 'a') {
                                ?>
                                <div class="form-group">
                                    <label>Account Type<i class="required">*</i> <i class="fa fa-question-circle" aria-hidden="true" title="11 degit" id="epass1"></i></label>
                                    <select class="form-control" value="<?php echo $data->type; ?>">
                                        <option value="a">Admin</option>
                                        <option value="o">Operator</option>
                                        <option value="u">User</option>
                                    </select>
                                </div>
                            <?php } ?>
                            <div class="form-group">
                                <label>Address <i class="fa fa-question-circle" aria-hidden="true" title="min 20, max 150" id="epass1"></i></label>
                                <textarea name="add" id="add" class="form-control" cols="30" rows="5" placeholder="Address" value="<?php echo $data->address; ?>" ></textarea>
                            </div>
                            <div class="form-group" >
                                <label>Gender<i class="required">*</i></label>
                                <div class="modal-content panel-body table table-hover">
                                    <div class="form-group"><input  type="radio" name="gen" id="gen" value="1" checked> <i class="fa fa-male"> Male </i></div>
                                    <div class="form-group"><input type="radio" name="gen" id="gen" value="2"> <i class="fa fa-female">Female </i> </div>
                                    <div class="form-group"><input type="radio" name="gen" id="gen" value="3"> <i class="fa fa-users"> Other</i></div> 
                                </div>
                            </div>
                            <div class="modal-content panel-body">
                                <label>Picture<i class="required">*</i></label>
                                <div>
                                    <input class="panel-body" type="file" id="pic" name="pic" value="<?php echo $data->picture; ?>"/>
                                </div>
                            </div><hr>
                            <div class="form-group">
                                <div class="col-sm-6"><button type="submit" name="sub" id="sub" class="btn btn-success"><i class="fa fa-send"> </i> | Send</button></div>
                                <div class="col-sm-6"><button type="reset" name="sub" id="sub" class="btn btn-danger"><i class="fa fa-refresh"> </i> | Reset</button></div>
                            </div>
                        </form><hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
