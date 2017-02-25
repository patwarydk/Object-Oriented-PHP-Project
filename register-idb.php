<section id="blogArchive">      
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <div class="container">
                <ol class="breadcrumb">
                    <li>You are here : </li>
                    <li><a href="index.php">Home</a></li>                  
                    <li class="active">Registration</li>
                </ol>
                <div class="section-heading">
                    <h2>Registration From</h2>
                    <div class="line"></div>
                </div>
            </div>
        </div>        
    </div>      
</section>  
<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <img src="assets-front/images/register.jpg" class="img-responsive image-effect img-right popover-content"/>
            </div>
            <div class="col-sm-6">
                <div class="contact-form">
                    <form class="submitphoto_form" method="post" action="index.php?u=register-insert" enctype="multipart/form-data">
                        <div class="form-group">
                            <label>Full Name: <i class="required">*</i> <i class="fa fa-question-circle" aria-hidden="true" title="min 5 max 30"></i></label>
                            <input type="text" name="name" id="name" class="wp-form-control wpcf7-text" placeholder="Your name">
                        </div>
                        <div class="form-group">
                            <label>Email<i class="required">*</i> <i class="fa fa-question-circle" aria-hidden="true" title="min 12" id="epass1"></i></label>
                            <input type="mail"  name="email" id="email" class="wp-form-control wpcf7-email" placeholder="Email address">
                            <span id="ava"></span>

                        </div>
                        <div class="form-group">
                            <label>Password <i class="required">*</i> <i class="fa fa-question-circle" aria-hidden="true" title="min 8 with number & charecter" id="epass1"></i></label>          
                            <input type="password"  name="pass" id="pass1" class="wp-form-control wpcf7-text" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label>Retype Password</label>          
                            <input type="password"  name="pass1" id="pass2" class="wp-form-control wpcf7-text" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label>Contact Number<i class="required">*</i> <i class="fa fa-question-circle" aria-hidden="true" title="11 degit" id="epass1"></i></label>
                            <input type="text" name="cont" id="cont" class="wp-form-control wpcf7-text" placeholder="Contact Number">
                        </div>
                        <div class="form-group">
                            <label>Address <i class="fa fa-question-circle" aria-hidden="true" title="min 20, max 150" id="epass1"></i></label>
                            <textarea name="add" id="add" class="wp-form-control wpcf7-textarea" cols="30" rows="5" placeholder="Address"></textarea>
                        </div>
                        <div class="form-group" >
                            <label>Gender<i class="required">*</i></label>
                            <div class="wp-form-control wpcf7-select">
                                <input  type="radio" name="gen" id="gen" value="1" checked> <i class="fa fa-male"> Male </i>
                                <input type="radio" name="gen" id="gen" value="2"> <i class="fa fa-female">Female </i> 
                                <input type="radio" name="gen" id="gen" value="3"> <i class="fa fa-users"> Other</i> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Picture<i class="required">*</i></label>
                            <div class="wp-form-control wpcf7-textl">
                                <input type="file" id="pic" name="pic" />
                            </div>
                        </div>
                        <input type="submit"  name="sub" id="sub" value= "Submit" class="btn btn-success"/><hr>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>>

<script>
                $(document).ready(function() {
                    $("#sub").click(function() {
                        var err = 0;
                        var name = $("#name").val();
                        var email = $("#email").val();
                        var pass1 = $("#pass1").val();
                        var pass2 = $("#pass2").val();
                        //var cont = $("#cont").val();
                        //var add = $("#add").val();
                      //  var gen = $("#gen").val();
                       // var pic = $("#pic").val();

                        $("#name, #email, #pass1, #pass2").css({
                            "border": "2px solid #2BAB02"
                        });

                        if (name == "" || name == null) {
                            $("#name").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        }
                        else if (name.length < 6) {
                            $("#name").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        }

                        if (email == "" || email == null) {
                            $("#email").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        }
                        else if (!validateEmail(email)) {
                            $("#email").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        }

                        if (pass1 == "") {
                            $("#pass1").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                            $("#epass1").attr("title", "Password not be blank");
                        }
                        else if (pass2 == "") {
                            $("#pass2").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        }
                        else if (pass1.length >2 {
                            $("#pass1").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        }
                        else if (!(pass1.match(/[a-z]/) && pass1.match(/[A-Z]/) && pass1.match(/[0-9]/))){
                            $("#pass1").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                            $("#epass1").attr("title", "A-Z");
                        }
                        else if (pass1 != pass2) {
                            $("#pass1").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        }
                        else if (cont.length < 11) {
                            $("#cont").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        }
                       else if (add.length < 11) {
                            $("#add").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        }
                        else if (gen ==1 || gen==2 || gen==3) {
                            $("#gen").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        }
                        else if (pic  ==jpg || pic==jpge || pic==png || pic==gif) {
                            $("#pic").css({
                                "border": "2px solid #F00"
                            });
                            err++;
                        } 
                        
                                if (err > 0) {
                            return false;
                        }
                    });
                });

                $("#email").keyup(function() {
                    var email = $("#email").val();
                    if (validateEmail(email)) {
                        var datalist = "email=" + email;
                        $.ajax({
                            type: 'POST',
                            data: datalist,
                            url: "dal/email-check.php",
                            success: function(data) {
                                if (data == 2) {
                                    $("#ava").text("Avaliable");
                                }
                                else {
                                    $("#ava").text("This email is not available");
                                }
                            }
                        });
                    }
                    else {
                        $("#ava").text("");
                    }
                });

                function validateEmail(email) {
                    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                    return re.test(email);
                }
            </script>