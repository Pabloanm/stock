<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Manage
            <small>Customers</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Customers</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-md-12 col-xs-12">

                <div id="messages"></div>

                <?php if ($this->session->flashdata('success')) : ?>
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <?php echo $this->session->flashdata('success'); ?>
                    </div>
                <?php elseif ($this->session->flashdata('error')) : ?>
                    <div class="alert alert-error alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <?php echo $this->session->flashdata('error'); ?>
                    </div>
                <?php endif; ?>


                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Add Customer</h3>
                    </div>
                    <!-- /.box-header -->
                    <form role="form" action="<?php base_url('users/create') ?>" method="post" enctype="multipart/form-data">
                        <div class="box-body">

                            <?php echo validation_errors(); ?>


                            <div class="form-group">
                                <label for="customer_name">Customer Name</label>
                                <input type="text" class="form-control" id="customer_name" name="customer_name" placeholder="Enter Customer name" autocomplete="off">
                            </div>

                            <div class="form-group">
                                <label for="customer_address">Address</label>
                                <input type="text" class="form-control" id="customer_address" name="customer_address" placeholder="Enter address" autocomplete="off">
                            </div>

                            <div class="form-group">
                                <label for="customer_phone">Phone</label>
                                <input type="text" class="form-control" id="customer_phone" name="customer_phone" placeholder="Enter Office Phone" autocomplete="off">
                            </div>
                            
                            <div class="form-group">
                                <label for="vat_number">Cuit</label>
                                <input type="text" class="form-control" id="vat_number" name="vat_number" placeholder="Enter Vat Number" autocomplete="off">
                            </div>

                            <div class="form-group">
                                <label for="phone">Personal Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter personal phone" autocomplete="off">
                            </div>
                            <div class="form-group">
                                <label for="country">Country</label>
                                <input type="text" class="form-control" id="country" name="country" placeholder="Enter country" autocomplete="off">
                            </div>
                            <div class="form-group">
                                <label for="state">State</label>
                                <input type="text" class="form-control" id="state" name="state" placeholder="Enter country" autocomplete="off">
                            </div>
                            <div class="form-group">
                                <label for="city">City</label>
                                <input type="text" class="form-control" id="city" name="city" placeholder="Enter country" autocomplete="off">
                            </div>

                            <div class="form-group">
                                <label for="message">Description</label>
                                <textarea type="text" class="form-control" id="message" name="message" placeholder="Enter 
                  description" autocomplete="off">
                </textarea>
                            </div>

                            <div class="form-group">
                                <label for="store">Availability</label>
                                <select class="form-control" id="availability" name="availability">
                                    <option value="1">Yes</option>
                                    <option value="2">No</option>
                                </select>
                            </div>

                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                            <a href="<?php echo base_url('products/') ?>" class="btn btn-warning">Back</a>
                        </div>
                    </form>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- col-md-12 -->
        </div>
        <!-- /.row -->


    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script type="text/javascript">
    $(document).ready(function() {
        $(".select_group").select2();
        $("#description").wysihtml5();

        $("#mainCustomerNav").addClass('active');
        $("#addCustomerNav").addClass('active');

        var btnCust = '<button type="button" class="btn btn-secondary" title="Add picture tags" ' +
            'onclick="alert(\'Call your custom code here.\')">' +
            '<i class="glyphicon glyphicon-tag"></i>' +
            '</button>';
        $("#product_image").fileinput({
            overwriteInitial: true,
            maxFileSize: 1500,
            showClose: false,
            showCaption: false,
            browseLabel: '',
            removeLabel: '',
            browseIcon: '<i class="glyphicon glyphicon-folder-open"></i>',
            removeIcon: '<i class="glyphicon glyphicon-remove"></i>',
            removeTitle: 'Cancel or reset changes',
            elErrorContainer: '#kv-avatar-errors-1',
            msgErrorClass: 'alert alert-block alert-danger',
            // defaultPreviewContent: '<img src="/uploads/default_avatar_male.jpg" alt="Your Avatar">',
            layoutTemplates: {
                main2: '{preview} ' + btnCust + ' {remove} {browse}'
            },
            allowedFileExtensions: ["jpg", "png", "gif"]
        });

    });
</script>