$( document ).ready(function() {

const navbar = () => {
$('.navbar-toggler').on('click', () => {
    $('.collapse').toggle('slow', () =>{
        $(this).show();
    });
});
}
navbar();

const acc = () => {

$('.q1').on('click', () => {
    $('.answ1').eq(0).toggle('slow', () => {
        $('.answ1').eq(1).css('display', 'none');
        $('.answ1').eq(2).css('display', 'none');
        $(this).css('display', 'block');    
    })
});
$('.q2').on('click', () => {
    $('.answ1').eq(1).toggle('slow', () => {
        $('.answ1').eq(0).css('display', 'none');
        $('.answ1').eq(2).css('display', 'none');
        $(this).css('display', 'block');
    })
});
$('.q3').on('click', () => {
    $('.answ1').eq(2).toggle('slow', () => {
        $('.answ1').eq(0).css('display', 'none');
        $('.answ1').eq(1).css('display', 'none');
        $(this).css('display', 'block');   
    })
});
}
acc();

});

const counters = document.querySelectorAll('.nmb');
let count = document.querySelectorAll('.nmbb');
const speed = 2000;

counters.forEach( counter => {
   const animate = () => {
      const value = +counter.getAttribute('val');
      const data = +counter.innerText;
     
      const time = value / speed;
     if(data < value) {
          counter.innerText = Math.ceil(data + time);
          setTimeout(animate, 500);
        }else{
          counter.innerText = value;
        }
     
   }
   $(window).on('scroll', () => {
    console.log($(this).scrollTop());
    if($(this).scrollTop() > 2200 && $(this).scrollTop() < 2700){
        animate();
    }
})

});

count.forEach( counter => {
    const animate2 = () => {
       const value = +counter.getAttribute('val');
       const data = +counter.innerText;
      
       const time = value / speed;
      if(data < value) {
           counter.innerText = Math.ceil(data + time);
           setTimeout(animate2, 50);
         }else{
           counter.innerText = value;
         }
      
    }
    $(window).on('scroll', () => {
        console.log($(this).scrollTop());
        if($(this).scrollTop() > 2200 && $(this).scrollTop() < 2700){
            animate2();
        }
    })
   
 });

