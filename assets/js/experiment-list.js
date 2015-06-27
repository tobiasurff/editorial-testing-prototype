jQuery(document).ready(function($)
{
	var table = $("#table-4").dataTable({
		"sPaginationType": "bootstrap",
		"sDom": "<'row'<'col-xs-6 col-left'l><'col-xs-6 col-right'<'export-data'T>f>r>t<'row'<'col-xs-6 col-left'i><'col-xs-6 col-right'p>>",
		"oTableTools": {
		},
		
	});

	window.datePickCallback = function(start, end, label){
		alert(start.toISOString(), end.toISOString(), label);
		$('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
	}
});