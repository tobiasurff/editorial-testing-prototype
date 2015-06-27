jQuery(document).ready(function($)
{
	var table = $("#table-4").dataTable({
		"sPaginationType": "bootstrap",
		"sDom": "<'row'<'col-xs-6 col-left'l><'col-xs-6 col-right'<'export-data'T>f>r>t<'row'<'col-xs-6 col-left'i><'col-xs-6 col-right'p>>",
		"oTableTools": {
		},
		
	});

	// Line Charts
	var line_chart_demo = $("#line-chart-demo");

	var line_chart = Morris.Line({
		element: 'line-chart-demo',
		data: [
			{ y: '2015-06-04', a: 2.4, b: 2.5 },
			{ y: '2015-06-05', a: 3.4,  b: 2.2 },
			{ y: '2015-06-06', a: 2.8,  b: 3.2 },
			{ y: '2015-06-07', a: 4.2,  b: 4.4 },
			{ y: '2015-06-08', a: 4.6,  b: 5.2 },
			{ y: '2015-06-09', a: 5.8,  b: 6.7 },
			{ y: '2015-06-10', a: 6.4, b: 6.7 }
		],
		xkey: 'y',
		ykeys: ['a', 'b'],
		xLabelAngle: 45,
		postUnits: '%',
		labels: ['Variation', 'Baseline'],
		redraw: true
	});

	line_chart_demo.parent().attr('style', '');

	window.datePickCallback = function(start, end, label){
		alert(start.toISOString(), end.toISOString(), label);
		$('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
	}



});