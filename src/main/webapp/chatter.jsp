<!doctype html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My Chatter</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="http://twitter.github.com/bootstrap/assets/js/google-code-prettify/prettify.css">

<style>
body{
font-family: Arial, Helvetica, sans-serif;
font-size: 12px;
font-weight: normal;
}
.profile_pic{
	height:45px;
	width:45px;
	padding:3px;
	
}
.feeditem{
	padding-left:25px;
}
.feeditembody{
}
.feeditemfooter{
	color: #7D7D84;
	font-size: 11px;
	padding-top:8px;
}
.feeditemcommentbody{
	padding-top:3px;
}
.feeditemcommentfooter{
	color: #7D7D84;
	font-size: 11px;
	padding-top:5px;
	padding-bottom:5px;
}
.feedcomments{
	padding:3px;
	padding-left:52px;	
}

.feedcomments{
	padding:3px;
	padding-left:52px;	
}

.arrow{
	background-image: url(images/comment_topArrow.gif);
	height: 5px;
	margin-left: 10px;
	background-repeat: no-repeat;
}
.feeditemlike,.feeditemcomment{
	background: #EFF7FA;
	border-bottom: 1px solid #DEE5EA;
	border-top: 1px solid white;
}


.feeditemcomment {
	min-height: 34px;
	padding-right: 18px;
}
.feeditemlike{
padding: 4px 6px;
}

a.feedcommentphoto{
	a.float: left;
}

.feeditemcommentphoto img {
float: left;
width: 30px;
height: 30px;
display: block;
overflow: hidden;
padding-right:5px;

}

.feeditemphoto img {
float: left;
width: 45px;
height: 45px;
display: block;
overflow: hidden;
padding-right:5px;
}

.like_icon{
display: inline-block;
height: 15px;
width: 16px;
margin-right: 3px;
background: url(images/filters_sprite.png) 0 -181px
}

.publishercontainer {
padding-left: 8px;
-webkit-border-top-right-radius: 5px;
-webkit-border-top-left-radius: 5px;
background: white url(images/feedbg.png) repeat-x scroll left -40px;
border: 0;
line-height: normal;
padding-top: 10px;
max-width: 640px;
overflow: visible;
position: relative;
border-bottom: 1px solid #E6E6E6;
padding-bottom: 10px;
margin-bottom: 15px;
min-height: 75px;
}
.publishercontainer {
	line-height: normal;
}
.publisherInfoIcon {
	position: absolute;
	top: 14px;
	right: 14px;
	background: transparent url(images/publisher_info_icon.png) no-repeat scroll 0 0;
	background-position: 0px 0px;
	height: 20px;
	width: 20px;
	z-index: 100;
	cursor: pointer;
}

.publishercontainer .publishercontrols .publishertextarea {
	margin-bottom: 2px;
}
.feedcontainer .feeditemcommentnew .foobar, .publishercontainer .publishertextareafocus {
	color: #222;
	background-color: white;
}
.publishercontainer .publishertextarea {
	color: #999;
	min-height: 1.3em;
	background: transparent url(images/textfield_bg80opacity.png) repeat-x scroll center top;
}

.feedcontainer .feeditemcommentplaceholder input, .feedcontainer .feeditemcommentnew .foobar, .publishercontainer .publishertextarea {
resize: none;
margin: 0;
overflow: hidden;
width: 100%;
background-color: white;
border: 1px solid #C7CCCE;
padding: 4px;
line-height: 16px;
-webkit-line-break: after-white-space;
word-wrap: break-word;
outline-style: none;
-moz-border-radius: 5px;
-webkit-border-radius: 5px;
}

.publishercontainer .publishersharebutton {
	float: right;
	margin: 0 -10px 6px 0;
}
body input.btn, body input.btnDisabled, body input.btnCancel {
	padding: 4px 3px;
}

a.publisherattach {
	color: #015BA7;
	padding: 1px;
	font-size: 0.9em;
	font-weight: bold;
	text-decoration: none;
	float: left;
}

span.publisherlabel {
	float: left;
}
.publishercontainer .publisherlabel {
	color: #4A4A56;
	font-size: 0.9em;
	font-weight: bold;
	margin-top: 2px;
}

a.publisherattach img {
	height: 16px;
	width: 16px;
	background: transparent url(images/publisher_icon16.png) no-repeat scroll left top;
	float: left;
	border:none;
	padding-left:3px;
	padding-right:3px;
}

</style>
</head>

<body>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a href="/" class="brand">My Chatter Feed</a>
        </div>
      </div>
    </div>

	<div class="container">
	<div style="width:541px;padding-top:50px;">
	<div class="publishercontainer">
    	<div class="publisherrightcontainer">
        	<div class="publishercontrols">
            	<div class="publisherInfoIcon sticky">
                	<img src="images/s.gif" width="24" height="24"/>
                </div>
                <textarea class="chatterHashtagsEnabled publishertextarea chatterMentionsEnabled publishertextareafocus" maxlength="1001" name="publishereditablearea" tabindex="0" title="" type="text" wrap="soft" style="width: 488px; padding-right: 29px; min-height: 32px; ">What are you working on?</textarea>
                <span class="cxcontentbuttonbar" id="contentButtonBar">
                	<span class="publisherlabel">Attach</span><a href="" class="publisherattach" id="publisherAttachFile">
                	<img src="/s.gif" alt="" class="publisherattachfile" title="">
                	<span class="publisherattachtext">File</span>
                	</a><a href="" class="publisherattach" id="publisherAttachLink">
                	<img src="/s.gif" alt="" class="publisherattachlink" title="">
                	<span class="publisherattachtext">Link</span></a>
                	</span>
                </div>
        </div>
    </div>
    
    <div class="feeditembody">
    	<a href="#" class="feeditemphoto">
            	<img src="" alt="comment_img" />
        </a>
        <div class="feeditem">
        	<div class="feeditembody">
        		<a href="#">From User</a> Chatter message
        	</div>
	    	<div class="feeditemfooter">Today at 4:30pm . Comment . Like</div>
		</div>
    </div>
    <div class="feedcomments">
    <div class="arrow"></div>
    <div class="feeditemlike"><span class="like_icon"></span> Joe and John like this.</div>
    <div class="feeditemcomment">
        	 <a href="#" class="feeditemcommentphoto">
            	<img src="" alt="comment_img" />
             </a>
        	<div class="feeditemcomment">
        		<span class="feeditemcommentbody">
        		<a href="#">From User</a> Comment from user
        		</span>
	    		<div class="feeditemcommentfooter">Today at 4:30pm . Like</div>
			</div>
        	 <a href="#" class="feeditemcommentphoto">
            	<img src="" alt="comment_img" />
             </a>
        	<div class="feeditemcomment">
        		<span class="feeditemcommentbody">
        		<a href="#">From User</a> Comment from user
        		</span>
	    		<div class="feeditemcommentfooter">Today at 4:30pm . Like</div>
			</div>
        	 <a href="#" class="feeditemcommentphoto">
            	<img src="" alt="comment_img" />
             </a>
        	<div class="feeditemcomment">
        		<span class="feeditemcommentbody">
        		<a href="#">From User</a> Comment from user
        		</span>
	    		<div class="feeditemcommentfooter">Today at 4:30pm . Like</div>
			</div>
        	 <a href="#" class="feeditemcommentphoto">
            	<img src="" alt="comment_img" />
             </a>
        	<div class="feeditemcomment">
        		<span class="feeditemcommentbody">
        		<a href="#">From User</a> Comment from user
        		</span>
	    		<div class="feeditemcommentfooter">Today at 4:30pm . Like</div>
			</div>
    </div>
    </div>
</div>
</div>
</body>
</html>
