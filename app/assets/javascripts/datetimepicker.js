var array = ["2020-12-08","2020-12-07","2020-12-09"]
$(function() {
  $('.datepicker').datepicker({
    changeMonth: true,
    changeYear: true,
    orientation: "right",
    beforeShowDay: function(date){
      var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
      if ($.inArray(string, array) != -1) {
        return [true, "","Available"];
      } else {
        return [false,"","unAvailable"];
      }
    }
  });
});