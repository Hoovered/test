$(function(){
    window.onload = function(e) {
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== this.undefined && item.type === "ui") {
                if (item.display === true) {
                    $('#container').show();
                } else {
                    $('#container').hide();
                }

            }
        })
    }
})