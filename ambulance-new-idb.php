<link rel="stylesheet" type="text/css" href="assets/css/jquery.tokenize.css" />

<script type="text/javascript" src="assets/js/jquery.js"></script>
<script type="text/javascript" src="assets/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.tokenize.js"></script>
<div id="page-wrapper">
    <div id="page-inner" class=" modal-content">
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-head-line">Ambulance Information</h1>
                <a href="master.php?o=ambulance-view"><i class="btn btn-success fa fa-file"> View</i></a>
                <a href="master.php"><i onclick="Cancel()" class="btn btn-danger fa fa-times"> Cancel</i></a>
                <h1 class="page-subhead-line"></h1>
            </div>
        </div>
        <!-- /. ROW  -->
        <div class="row">
            <div class="c col-md-8 col-md-offset-2 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        Add New Ambulance Entry FORM
                    </div>
                    <div class="panel-body">
                        <form role="form" action="master.php?o=ambulance-insert" method="post">
                            <div class="form-group">
                                <label>Vehicle No</label>
                                <input class="form-control" type="text" name="veh">
                            </div>
                            <div class="form-group">
                                <label>Choose Staff</label>

                                <select name="staffid" class="form-control">
                                    <option>Chose Staff</option>
                                    <?PHP
                                    $am = new dalStaff();
                                    Dropdown($am->GlobalView("staff", "id,name", "name asc"), 0);
                                    ?>
                                </select>
                            </div>

                            <button onclick="Save()" name="sub" class="btn btn-success btn-sm">Save</button>
                            <input onclick="Reset()" type="reset" name="cancel" value="Reset" class="btn btn-danger btn-sm"/>

                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script type="text/javascript">
            $('select#tokenize_spe').tokenize({displayDropdownOnFocus: true});
        </script>



