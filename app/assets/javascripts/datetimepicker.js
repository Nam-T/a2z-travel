var array = ["2020-12-08","2020-12-07","2020-12-09", "2020-12-10", "2020-12-06"]
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
    },
    beforeShow: function (input, inst) {
      setTimeout(function() {
          inst.dpDiv.find('a.ui-state-highlight').removeClass('ui-state-highlight');
      }, 100);
    },
    dayNamesMin: ["CN", "T2", "T3", "T4", "T5", "T6", "T7"],
    firstDay: 1
  });
});