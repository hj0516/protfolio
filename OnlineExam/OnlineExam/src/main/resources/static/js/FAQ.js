$(".que_1").click(function() {
  $(this).next(".que_2").stop().slideToggle(300);
  $(this).toggleClass('on').siblings().removeClass('on');
});

$(document).ready(function(){
  
  $(".faq_1").show();
  $('.faq_2').show();
  $('.faq_3').show();
  $('.faq_4').show();
  $('.faq_5').show();
  
$("input[name='faqSelect']").change(function(){
  if($("input[name='faqSelect']:checked").val() == '전체'){
    $('.faq_1').show();
    $('.faq_2').show();
    $('.faq_3').show();
    $('.faq_4').show();
    $('.faq_5').show();
  }	
  else if($("input[name='faqSelect']:checked").val() == '풀스택'){
    $('.faq_1').show();
    $('.faq_2').hide();
    $('.faq_3').hide();
    $('.faq_4').hide();
    $('.faq_5').hide();
  }
  else if($("input[name='faqSelect']:checked").val() == 'JS'){
    $('.faq_1').hide();
    $('.faq_2').show();
    $('.faq_3').hide();
    $('.faq_4').hide();
    $('.faq_5').hide();
  }
  else if($("input[name='faqSelect']:checked").val() == '자바'){
    $('.faq_1').hide();
    $('.faq_2').hide();
    $('.faq_3').show();
    $('.faq_4').hide();
    $('.faq_5').hide();
  }
  else if($("input[name='faqSelect']:checked").val() == '파이썬'){
    $('.faq_1').hide();
    $('.faq_2').hide();
    $('.faq_3').hide();
    $('.faq_4').show();
    $('.faq_5').hide();
  }
  else if($("input[name='faqSelect']:checked").val() == '백엔드'){
    $('.faq_1').hide();
    $('.faq_2').hide();
    $('.faq_3').hide();
    $('.faq_4').hide();
    $('.faq_5').show();
  }
});
  
});