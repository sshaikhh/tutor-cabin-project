
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.4/croppie.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.4/croppie.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

	<link rel="shortcut icon" href="">
	
	
</head>
<style>
label.cabinet{
	display: block;
	cursor: pointer;
}

label.cabinet input.file{
	position: relative;
	height: 100%;
	width: auto;
	opacity: 0;
	-moz-opacity: 0;
  filter:progid:DXImageTransform.Microsoft.Alpha(opacity=0);
  margin-top:-30px;
}

#upload-demo{
	width: 250px;
	height: 250px;
  padding-bottom:25px;
}
figure figcaption {
    position: absolute;
    bottom: 0;
    color: #fff;
    width: 100%;
    padding-left: 9px;
    padding-bottom: 5px;
    text-shadow: 0 0 10px #000;
}
</style>



<body>
<div class="container">
	<div class="row">
								<div class="col-xs-12">
									<label class="cabinet center-block">
										<figure>
											<img src="" class="gambar img-responsive img-thumbnail" id="item-img-output" />
										  <figcaption><i class="fa fa-camera"></i></figcaption>
								    </figure>
										<input type="file" class="item-img file center-block" name="file_photo"/>
									</label>
								</div>
							</div>
</div>

<div class="modal fade" id="cropImagePop" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
							<div class="modal-header">
							  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							  <h4 class="modal-title" id="myModalLabel">
							  	<?=multiLanguage( "Edit Foto" , "Edit Photo" )?></h4>
							</div>
							<div class="modal-body">
				            <div id="upload-demo" class="center-block"></div>
				      </div>
							 <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" id="cropImageBtn" class="btn btn-primary">Crop</button>
      </div>
						    </div>
						  </div>
						</div>

</body>
</html>


<script>
//Start upload preview image
$(".gambar").attr("src", "https://user.gadjian.com/static/images/personnel_boy.png");
						var $uploadCrop,
						tempFilename,
						rawImg,
						imageId;
						function readFile(input) {
				 			if (input.files && input.files[0]) {
				              var reader = new FileReader();
					            reader.onload = function (e) {
									$('.upload-demo').addClass('ready');
									$('#cropImagePop').modal('show');
						            rawImg = e.target.result;
					            }
					            reader.readAsDataURL(input.files[0]);
					        }
					        else {
						        swal("Sorry - you're browser doesn't support the FileReader API");
						    }
						}

						$uploadCrop = $('#upload-demo').croppie({
							viewport: {
								width: 150,
								height: 200,
							},
							enforceBoundary: false,
							enableExif: true
						});
						$('#cropImagePop').on('shown.bs.modal', function(){
							// alert('Shown pop');
							$uploadCrop.croppie('bind', {
				        		url: rawImg
				        	}).then(function(){
				        		console.log('jQuery bind complete');
				        	});
						});

						$('.item-img').on('change', function () { imageId = $(this).data('id'); tempFilename = $(this).val();
																										 $('#cancelCropBtn').data('id', imageId); readFile(this); });
						$('#cropImageBtn').on('click', function (ev) {
							$uploadCrop.croppie('result', {
								type: 'base64',
								format: 'jpeg',
								size: {width: 150, height: 200}
							}).then(function (resp) {
								$('#item-img-output').attr('src', resp);
								$('#cropImagePop').modal('hide');
							});
						});
				// End upload preview image
</script>