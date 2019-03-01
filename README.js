$(function () {
    // Line wrap back 
    var shLineWrap = function () {
        $('.syntaxhighlighter').each(function () {
            // Fetch 
            var $sh = $(this),
                $gutter = $sh.find('td.gutter'),
                $code = $sh.find('td.code');
            // Cycle through lines 
            $gutter.children('.line').each(function (i) {
                // Fetch 
                var $gutterLine = $(this),
                    $codeLine = $code.find('.line:nth-child(' + (i + 1) + ')');
                //alert($gutterLine); 
                // Fetch height 
                var height = $codeLine.height() || 0;
                if (!height) {
                    height = 'auto';
                } else {
                    height = height += 'px';
                    //alert(height); 
                }
                // Copy height over 
                $gutterLine.attr('<SPAN style="WIDTH: auto; HEIGHT: auto; float: none" id=0_nwp><A style="TEXT-DECORATION: none" id=0_nwl href="http://cpro.baidu.com/cpro/ui/uijs.php?rs=1&u=http%3A%2F%2Fwww%2Esuchso%2Ecom%2Fprojecteactual%2Fz%2Dblog%2Djquery%2DSyntaxHighlighter%2Dlongcode%2Ehtml&p=baidu&c=news&n=10&t=tpclicked3_hc&q=95053049_cpr&k=style&k0=%CE%C4%BC%FE%BC%D0&kdi0=32&k1=style&kdi1=1&k2=%B2%A9%BF%CD&kdi2=1&sid=77860fedb9413425&ch=0&tu=u1702844&jk=e7459084404b7b2f&cf=29&fv=15&stid=9&urlid=0&luki=2&seller_id=1&di=128" target=_blank mpid="0"><SPAN style="WIDTH: auto; FLOAT: none; HEIGHT: auto; COLOR: #0000ff; FONT-SIZE: 16px">style</SPAN></A></SPAN>', 'height: ' + height + ' !important'); // fix by Edi, for JQuery 1.7+ under Firefox 15.0 
                console.debug($gutterLine.height(), height, $gutterLine.text(), $codeLine);
            });
        });
    };
    // Line wrap back when syntax highlighter has done it's stuff 
    var shLineWrapWhenReady = function () {
        if ($('.syntaxhighlighter').length === 0) {
            setTimeout(shLineWrapWhenReady, 10);
        } else {
            shLineWrap();
        }
    };
    // Fire 
    shLineWrapWhenReady();
});