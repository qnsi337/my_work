  var swiper = new Swiper(".mySwiper", {
        slidesPerView: 1,
        spaceBetween: 10,
      });
      

  var modal = document.getElementById('modal');
      function open_modal(){
        modal.style.visibility = 'visible';
        modal.style.opacity = '1';
        modal.style.transition = 'all 0.7s ease-out 0s';
      }
      function close_modal(){
        modal.style.visibility = 'hidden';
        modal.style.opacity = '0';
      }

      function onModalKeydown(evt) {
        if (evt.key === 'Escape') {
          evt.preventDefault();
          close_modal();
        }
      }


  $(document).ready(function() {
    
    document.addEventListener('keydown', onModalKeydown);
    AOS.init();

    //parsley
    $('#form').parsley();
    
    // cleave
        var cleave = new Cleave('.phone_number_modal', {
          phone: true,
          phoneRegionCode: 'ru'
        });  

        $('body').on("click", function(e) {
          // Tabs
          if (e.target.closest('.balconies-item')) {
            tab(e, '.balconies-item', '.cold-warm');
          }
          if (e.target.closest('.wrap-item-title')) {
            tab(e, '.wrap-item-title', '.wrap-item');
          }
          
        });
      });
      
 // Tabs
  function tab(event='', tabClassName, tabPlaneClassName) {
    event.preventDefault();
        let item = event.target.closest(tabClassName)
        $(tabClassName).removeClass('active');
        $(item).addClass('active');
        let href = $(item).attr('href');
        $(tabPlaneClassName).removeClass('active').removeClass('in');
        $(href).addClass('active');
        setTimeout(function() {
          $(href).addClass('in')
        }, 200);
        return false;
      }

  function validate() {
    var userName = document.getElementById("userName")
    var userPhone = document.getElementById("userPhone")
    let result_name = userName.value.match(/^\d+$/);;
    let result_number = userPhone.value.match(/^[a-zA-Z]+$/);
    if ((result_number) || (result_name)) {
      alert('Неверный формат данных')
      return false;
    }

  return true;  
  }

