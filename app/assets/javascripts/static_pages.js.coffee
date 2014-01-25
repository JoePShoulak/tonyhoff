$(document).ready ->
	jQuery ->
    $("a.fancybox").fancybox()
	jQuery ->
    $(document).pjax('a.local-nav', '[data-pjax-container]')
	