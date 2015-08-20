// Date picker
$(function() {
			$("#datepicker_from").datepicker({
						dateFormat : 'dd/mm/yy',
						// showWeek: true,
						minDate : 0,
						maxDate : 365,
						onSelect : function(dateText, inst) {
							// alert("dateText : " + dateText);
							var date = new Date();
							// alert("unformatted date : " + date);
							var day = dateText.split("/")[0];
							var month = dateText.split("/")[1];
							var year = dateText.split("/")[2];
							// alert("date : " + day + " month : " + month + "
							// year : " + year);

							date.setFullYear(year, month - 1, day);
							// alert("formatted date : " + date);

							//$("#weekNo").val($.datepicker.iso8601Week(date));
						}
			});

			$("#datepicker_to").datepicker({
				dateFormat : 'dd/mm/yy',
				// showWeek: true,
				minDate : 0,
				maxDate : 365,
				onSelect : function(dateText, inst) {
					// alert("dateText : " + dateText);
					var date = new Date();
					// alert("unformatted date : " + date);
					var day = dateText.split("/")[0];
					var month = dateText.split("/")[1];
					var year = dateText.split("/")[2];
					// alert("date : " + day + " month : " + month + "
					// year : " + year);

					date.setFullYear(year, month - 1, day);
					// alert("formatted date : " + date);

					//$("#weekNo").val($.datepicker.iso8601Week(date));
				}
	});
		});

