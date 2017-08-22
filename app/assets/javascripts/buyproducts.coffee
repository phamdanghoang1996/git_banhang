$(document).ready(function(){
    $('#quantity').change(function(){
      total =  $('#price').attr('value') * $('#quantity').val();
      html_show_total = "<strong>"+total+" đồng</strong>";
      $('#showtotal').html(html_show_total);
    });
});
