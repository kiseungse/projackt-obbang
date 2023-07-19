<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<!-- Css Styles -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/themify-icons.css" type="text/css">
<link rel="stylesheet" href="../resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="../resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../resources/css/style.css" type="text/css">

<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"/></script>
<title>공지사항</title>

<script>
	function forCheck() {
	  var notice_writer = $('#notice_writer').val();
	  var notice_title = $('#notice_title').val();
	  var notice_content = $('#notice_content').val();
	  
		  if (notice_writer.trim() === "") {
		    alert('공지사항 작성자를 입력해주세요.');
		    $('#notice_writer').focus();
		    return false;
		  }
		  if (notice_title.trim() === "") {
		    alert('공지사항 제목을 입력해주세요.');
		    $('#notice_title').focus();
		    return false;
		  }
		  if (notice_content.trim() === "") {
		    alert('공지사항 내용을 입력해주세요.');
		    $('#notice_content').focus();
		    return false;
		  }
	}
</script>

</head>
<body>
<%@ include file="../includes/header.jsp" %>
<!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="/"><i class="fa fa-home"></i> Home</a>
                        <span>Notice</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->
	<div class="container">
		<br>
		<h4>&nbsp;공지사항</h4>
		<br>
	</div>
	<hr>
	<div class="container">
		<form action="/notice/noticeenroll" class="form-horizontal" method="post" onsubmit="return forCheck();">
			<div class="form-group row">
				<label class="col-sm-2 control-label">작성자</label>
				<div class="col-sm-3">
					<input name="notice_writer" id="notice_writer" type="text" class="form-control" placeholder="이름">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">제목</label>
				<div class="col-sm-5">

					<input name="notice_title" id="notice_title" type="text" class="form-control"
						placeholder="제목을 입력해주세요">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" >내용</label>
				<div class="col-sm-8">
					<textarea name="notice_content" id="notice_content" cols="50" rows="5" class="form-control" placeholder="내용을 입력해주세요"></textarea>
				</div>
			</div>
			<br>

			<div class="form-group row" align="right">
				<div class="col-sm-offset-2 col-sm-10 ">
				 <input type="submit" class="btn primary-btn" value="등록">				
			     <a href="noticelist" class="btn primary-btn"> 취소 </a> 
				</div>
			</div>
		</form>
	</div>

<jsp:include page="../includes/footer.jsp" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery-ui.min.js"></script>	
<script src="/resources/js/jquery.countdown.min.js"></script>
<script src="/resources/js/jquery.nice-select.min.js"></script>
<script src="/resources/js/jquery.zoom.min.js"></script>
<script src="/resources/js/jquery.dd.min.js"></script>
<script src="/resources/js/jquery.slicknav.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>
<script src="/resources/js/main.js"></script>
</body>
</html>