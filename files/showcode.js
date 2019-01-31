$(function () { 
var hlCodes = $("#cnblogs_post_body div.cnblogs_code"); 
if (hlCodes.length) { 
loadEncoderJs(); 
$.each(hlCodes, function () { 
var htmlContent = $(this).html(); 
$(this).html(htmlContent.replace(/(<br\s*\/?>){3}/gi, '<br/><br/>')); 
if ($(this).find("div.cnblogs_code_hide").length == 0) { 
if (parseInt($(this).css("height"), 10) > 30) { 
showCopyCode($(this)); 
var regex = /<script\s+type=[\"\']text\/javascript[\"\']>/gi; 
if (regex.test($(this).text())) { 
showRunCode($(this)); 
} 
} 
} 
}); 
} 
}); 

function showCopyCode(element) { 
$(element).append('<div class="cnblogs_code_toolbar"><span class="cnblogs_code_copy"><a href="javascript:void(0);" onclick="copyCnblogsCode(this)">复制代码</a></span>'); 
} 

function loadEncoderJs() { 
var encoderJs = document.createElement('script'); 
encoderJs.type = 'text/javascript'; 
encoderJs.src = 'http://common.cnblogs.com/script/encoder.js'; 
var node = document.getElementsByTagName('script')[0]; 
node.parentNode.insertBefore(encoderJs, node); 
} 

function copyCnblogsCode(element) { 
var codeContainer = getCnblogsCodeContainer(element); 
var cbCode = getCnblogsCodeText(codeContainer); 
var textarea = document.createElement('textarea'); 
$(textarea).val(cbCode).select(); 
$(textarea).css("width", $(codeContainer).css("width")); 
$(textarea).css("height", $(codeContainer).css("height")); 
$(textarea).css("font-family", "Courier New"); 
$(textarea).css("font-size", "12px"); 
$(textarea).css("line-height", "1.5"); 
$(codeContainer).parent().html(textarea); 
$(textarea).select(); 
$("<div>按 Ctrl+C 复制代码</div>").insertAfter($(textarea)); 
} 

function getCnblogsCodeContainer(element) { 
var codeContainer = $(element).parent().parent().parent().find("pre"); 
if (codeContainer.length == 0) { 
codeContainer = $(element).parent().parent().parent().find("div").first(); 
} 
return codeContainer; 
} 

function getCnblogsCodeText(codeContainer) { 
var cbCode = '\n' + $(codeContainer).html() 
.replace(//g, ' ') 
.replace(/<br\s*\/?>/ig, '\n') 
.replace(/<[^>]*>/g, ''); 
cbCode = cbCode.replace(/\n(\s*\d+)/ig, '\n'); 
cbCode = cbCode.replace(/\n/g, '\r\n'); 
if (typeof Encoder != undefined) { 
cbCode = Encoder.htmlDecode(cbCode); 
} 
cbCode = $.trim(cbCode); 
return cbCode; 
} 

function showRunCode(element) { 
var codeCopyDiv = $(element).find("div.cnblogs_code_toolbar"); 
if (codeCopyDiv.length) { 
$(codeCopyDiv).append('<span class="cnblogs_code_runjs"><a href="javascript:void(0);" onclick="runJsCode(this)">运行代码</a></span>'); 
} 
} 

function runJsCode(element) { 
var codeContainer = getCnblogsCodeContainer(element); 
var cbCode = getCnblogsCodeText(codeContainer); 
var newwin = window.open('', "_blank", ''); 
newwin.document.open('text/html', 'replace'); 
newwin.opener = null; 
newwin.document.write(cbCode); 
newwin.document.close(); 
} 

//#endregion